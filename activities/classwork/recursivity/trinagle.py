
class TriangleBuilder(object):
    CACHE{}

    def save(self, i ,j ,value):
        self.CACHE[(i,j)] = value
        return value
  
    def get(self,i,j,deafault=None):
        return self.CACHE.get[(i,j),default=None]
    
    def create(self,i,j):
        pass
    
    def get_or_create(self,i,j):
        pass
    
    def get_row(self, index):
        pass