package g;

import com.google.android.gms.internal.ads.zzgaz;
import java.io.Serializable;

/* loaded from: classes3.dex */
public final class gln extends zzgaz implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f18355c;

    /* renamed from: b, reason: collision with root package name */
    public static final gln f18354b = new gln(0);

    /* renamed from: a, reason: collision with root package name */
    public static final gln f18353a = new gln(1);

    public /* synthetic */ gln(int i) {
        this.f18355c = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgaz, java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        switch (this.f18355c) {
            case 0:
                Comparable comparable = (Comparable) obj;
                Comparable comparable2 = (Comparable) obj2;
                comparable.getClass();
                comparable2.getClass();
                return comparable.compareTo(comparable2);
            default:
                Comparable comparable3 = (Comparable) obj;
                Comparable comparable4 = (Comparable) obj2;
                comparable3.getClass();
                if (comparable3 == comparable4) {
                    return 0;
                }
                return comparable4.compareTo(comparable3);
        }
    }

    public final String toString() {
        switch (this.f18355c) {
            case 0:
                return "Ordering.natural()";
            default:
                return "Ordering.natural().reverse()";
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgaz
    public zzgaz zza() {
        switch (this.f18355c) {
            case 0:
                return f18353a;
            default:
                return super.zza();
        }
    }
}
