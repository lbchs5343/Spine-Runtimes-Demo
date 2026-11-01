package g;

import java.io.InputStream;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class dqf {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f14634a;

    static {
        try {
            InputStream resourceAsStream = dqf.class.getResourceAsStream("/android/res-map.txt");
            try {
                HashMap bc = ckd.bc(resourceAsStream);
                if (resourceAsStream != null) {
                    resourceAsStream.close();
                }
                f14634a = bc;
            } finally {
            }
        } catch (Exception e2) {
            throw new gck("Failed to load android resource file (res-map.txt)", e2);
        }
    }

    public static String b(int i) {
        return (String) f14634a.get(Integer.valueOf(i));
    }
}
