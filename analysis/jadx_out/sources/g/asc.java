package g;

import com.google.android.gms.internal.ads.zzgas;
import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public final class asc extends zzgas {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Comparator f10740b;

    public asc(Comparator comparator) {
        this.f10740b = comparator;
    }

    @Override // com.google.android.gms.internal.ads.zzgas
    public final Map a() {
        return new TreeMap(this.f10740b);
    }
}
