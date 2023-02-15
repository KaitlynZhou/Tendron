class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        // your code here
        Tendril[]test = new Tendril[7];
        for(int i = 0; i<7; i++){
          test[i] = new Tendril(len,((2+2*i)*PI)/7,x,y);
          test[i].show();
        }       
    }
}
