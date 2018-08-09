from datetime import datetime
import cherrypy


class TimeService:

    @cherrypy.expose
    def index(self):
        return datetime.utcnow().isoformat()


def main():
    cherrypy.quickstart(TimeService())


if __name__ == '__main__':
    main()
