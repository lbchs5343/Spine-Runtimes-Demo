package g;

import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class emd {
    public static final double[] af = {0.00390625d, 3.0517578125E-5d, 1.1920928955078125E-7d, 4.656612873077393E-10d};
    public static final int ag = ai(1);
    public static final HashMap ah;

    static {
        int ai = ai(4);
        int ai2 = ai(5);
        int ai3 = ai(6);
        int ai4 = ai(7);
        int ai5 = ai(8);
        int ai6 = ai(9);
        HashMap hashMap = new HashMap();
        ah = hashMap;
        hashMap.put(Integer.valueOf(ai), "other");
        hashMap.put(Integer.valueOf(ai2), "zero");
        hashMap.put(Integer.valueOf(ai3), "one");
        hashMap.put(Integer.valueOf(ai4), "two");
        hashMap.put(Integer.valueOf(ai5), "few");
        hashMap.put(Integer.valueOf(ai6), "many");
    }

    public static int ai(int i) {
        return (i & 65535) | 16777216;
    }
}
