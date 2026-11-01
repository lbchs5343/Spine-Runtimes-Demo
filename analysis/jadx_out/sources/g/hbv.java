package g;

import android.view.View;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class hbv {

    /* renamed from: a, reason: collision with root package name */
    public static final aqe f19202a = new aqe();

    /* renamed from: b, reason: collision with root package name */
    public static final ebs f19203b;

    static {
        ebs ebsVar = null;
        try {
            ebsVar = (ebs) fii.class.getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f19203b = ebsVar;
    }

    public static void c(int i, ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((View) arrayList.get(size)).setVisibility(i);
        }
    }
}
