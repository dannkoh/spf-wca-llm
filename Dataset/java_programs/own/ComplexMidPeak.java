package own;

import gov.nasa.jpf.symbc.Debug;

public class ComplexMidPeak {

    public static void algo(int[] a) {
        boolean fail = false;
        boolean skip = false;
        final int N = a.length;
        for (int i = 0; i < N-1; i++) {
            if (i < Math.ceil(N/2)) {
                if (a[i] < a[i+1]){
                    // Skip
                    skip = true;
                } else {
                    fail = true;
                }
            } else {
                if (a[i] > a[i+1]){
                    // Skip
                    skip = true;
                } else {
                    fail = true;
                }
            }
        }
        if (!fail) {
            int aa = 99999;
            for (int i = 0; i < N; i++) {
                aa = aa*aa;
            }
        }
    }

    public static void main(String[] args) {
        final int N = Integer.parseInt(args[0]);

        int a[] = new int[N];
        for (int i = 0; i < N; i++) {
            a[i] = Debug.makeSymbolicInteger("in"+i);
        }

        // We only measure the complexity of this function itself.
        algo(a);
    }
}
