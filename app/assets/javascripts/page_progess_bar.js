// -----------------------------------------------------------------------------------------
//
//      Organization:   Stakem Research
//      Author:         Fredrick Stakem
//      Date:           9.22.16
//
// -----------------------------------------------------------------------------------------


class PageProgressBar {

    constructor() {
        var self = this;
        this.height = 110;
        this.width = 20;
        this.createSvg();

        window.onscroll = function(x) {self.movePointer()};
        $('.sidebar-svg').mousemove(this.hover);
        $('.sidebar-svg').click(this.click);
    }
    createSvg() {
        this.svg = document.createElementNS("http://www.w3.org/2000/svg", "svg");
        this.svg.setAttributeNS(null, "id", "sidebar-svg");
        this.svg.setAttributeNS(null, "class", "sidebar-svg");
        this.svg.setAttributeNS(null, "width", this.width);
        this.svg.setAttributeNS(null, "height", this.height);
        document.getElementById("sidebar").appendChild(this.svg);

        this.background = document.createElementNS('http://www.w3.org/2000/svg', 'rect');
        this.background.setAttributeNS(null, "id", "sidebar-background");
        this.background.setAttributeNS(null, "class", "sidebar-background");
        this.background.setAttribute('width', this.width);
        this.background.setAttribute('height', this.height);
        this.background.setAttribute('fill', '#044B94');
        this.background.setAttribute('fill-opacity', 0.0);
        this.svg.appendChild(this.background);

        this.createSvgOutline();
        this.createSvgTicks();
        this.createSvgPointer();
    }
    createSvgOutline() {
        this.outline = document.createElementNS('http://www.w3.org/2000/svg', 'g');
        this.outline.setAttribute('stroke', '#333333');
        this.outline.setAttribute('stroke-width', 3);
        this.svg.appendChild(this.outline);

        this.outlineLines = [];

        var line = document.createElementNS('http://www.w3.org/2000/svg', 'line');
        line.setAttributeNS(null, "id", "sidebar-top-outline-line");
        line.setAttributeNS(null, "class", "sidebar-outline-line");
        line.setAttribute('x1', this.width);
        line.setAttribute('y1', 0);
        line.setAttribute('x2', 0);
        line.setAttribute('y2', 0);
        this.outlineLines.push(line);
        this.outline.appendChild(line);

        line = document.createElementNS('http://www.w3.org/2000/svg', 'line');
        line.setAttributeNS(null, "id", "sidebar-side-outline-line");
        line.setAttributeNS(null, "class", "sidebar-outline-line");
        line.setAttribute('x1', 0);
        line.setAttribute('y1', 0);
        line.setAttribute('x2', 0);
        line.setAttribute('y2', this.height);
        this.outlineLines.push(line);
        this.outline.appendChild(line);

        line = document.createElementNS('http://www.w3.org/2000/svg', 'line');
        line.setAttributeNS(null, "id", "sidebar-bottom-outline-line");
        line.setAttributeNS(null, "class", "sidebar-outline-line");
        line.setAttribute('x1', 0);
        line.setAttribute('y1', this.height);
        line.setAttribute('x2', this.width);
        line.setAttribute('y2', this.height);
        this.outlineLines.push(line);
        this.outline.appendChild(line);
    }
    createSvgTicks() {
        this.ticks = document.createElementNS('http://www.w3.org/2000/svg', 'g');
        this.ticks.setAttribute('stroke', '#333333');
        this.ticks.setAttribute('stroke-width', 1);
        this.svg.appendChild(this.ticks);

        this.tickLines = [];
        var tick;

        for(var i = 0; i < 9; i++) {
            tick = document.createElementNS('http://www.w3.org/2000/svg', 'line');
            tick.setAttributeNS(null, "id", "sidebar-tick" + i);
            tick.setAttributeNS(null, "class", "sidebar-tick");
            tick.setAttribute('x1', this.width);
            tick.setAttribute('y1', 15 + i * 10);
            tick.setAttribute('x2', 15);
            tick.setAttribute('y2', 15 + i * 10);
            this.tickLines.push(tick);
            this.ticks.appendChild(tick);
        }
    }
    createSvgPointer() {
        this.pointer = document.createElementNS('http://www.w3.org/2000/svg', 'g');
        this.pointer.setAttribute('stroke', '#333333');
        this.pointer.setAttribute('stroke-width', 1);
        this.svg.appendChild(this.pointer);

        this.pointerLines = [];

        var pointerLine = document.createElementNS('http://www.w3.org/2000/svg', 'line');
        pointerLine.setAttributeNS(null, "id", "sidebar-pointer-top");
        pointerLine.setAttributeNS(null, "class", "sidebar-pointer");
        pointerLine.setAttribute('x1', 5);
        pointerLine.setAttribute('y1', 10);
        pointerLine.setAttribute('x2', 10);
        pointerLine.setAttribute('y2', 15);
        this.pointerLines.push(pointerLine);
        this.pointer.appendChild(pointerLine);

        pointerLine = document.createElementNS('http://www.w3.org/2000/svg', 'line');
        pointerLine.setAttributeNS(null, "id", "sidebar-pointer-bottom");
        pointerLine.setAttributeNS(null, "class", "sidebar-pointer");
        pointerLine.setAttribute('x1', 5);
        pointerLine.setAttribute('y1', 20);
        pointerLine.setAttribute('x2', 10);
        pointerLine.setAttribute('y2', 15);
        this.pointerLines.push(pointerLine);
        this.pointer.appendChild(pointerLine);
    }
    getScrollPercent() {
        var h = document.documentElement; 
        var b = document.body;
        var st = 'scrollTop';
        var sh = 'scrollHeight';

        return h[st]||b[st] / ((h[sh]||b[sh]) - h.clientHeight) * 100;
    }
    movePointer() {
        var scrollPercent = getScrollPercent();
        scrollPercent = scrollPercent * .8;

        var topLine = this.pointerLines[0];
        var bottomLine = this.pointerLines[1];

        topLine.setAttribute('y1', scrollPercent + 10);
        topLine.setAttribute('y2', scrollPercent + 15);

        bottomLine.setAttribute('y1', scrollPercent + 20);
        bottomLine.setAttribute('y2', scrollPercent + 15);
    }
    hover(event) {
        var svgLocation = this.getScreenCTM();
        var svgX = event.clientX - svgLocation.e;
        var svgY = event.clientY - svgLocation.f;
    }
    click(event) {
        /*
        var svgLocation = this.getScreenCTM();
        var svgX = event.clientX - svgLocation.e;
        var svgY = event.clientY - svgLocation.f;
        console.log(svgX, svgY)

        var scale = (svgY - 15) / (this.getAttribute("height") - 30);
        console.log('******')
        console.log(scale)

        var location = scale * document.body.scrollHeight;
        console.log('+++++++++')
        console.log(location)

        window.scrollTo(0, location);
        */
    }
    
}