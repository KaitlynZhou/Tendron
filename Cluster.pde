class Cluster
{
    public final static int NUM_STEMS = 18; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        // your code here
        Tendril[]test = new Tendril[18];
        for(int i = 0; i<18; i++){
          test[i] = new Tendril(len,((2+2*i)*PI)/18,x,y);
          test[i].show();
        }       
    }
}
