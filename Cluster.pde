class Cluster
{
    public final static int NUM_STEMS = 15; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        // your code here
        Tendril[]test = new Tendril[15];
        for(int i = 0; i<15; i++){
          test[i] = new Tendril(len,((2+2*i)*PI)/15,x,y);
          test[i].show();
        }       
    }
}
