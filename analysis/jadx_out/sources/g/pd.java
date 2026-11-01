package g;

import android.content.res.TypedArray;
import android.util.SparseArray;
import com.google.android.gms.internal.ads.zzajf;

/* loaded from: classes3.dex */
public final class pd {

    /* renamed from: a, reason: collision with root package name */
    public Object f19804a;

    /* renamed from: b, reason: collision with root package name */
    public int f19805b;

    /* renamed from: c, reason: collision with root package name */
    public int f19806c;

    /* renamed from: d, reason: collision with root package name */
    public final Cloneable f19807d;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzajf[], java.lang.Cloneable] */
    public pd(int i) {
        this.f19807d = new zzajf[i];
        this.f19806c = 0;
    }

    public pd(zq zqVar, dzh dzhVar) {
        this.f19807d = new SparseArray();
        this.f19804a = zqVar;
        TypedArray typedArray = (TypedArray) dzhVar.f15121f;
        this.f19805b = typedArray.getResourceId(28, 0);
        this.f19806c = typedArray.getResourceId(53, 0);
    }
}
