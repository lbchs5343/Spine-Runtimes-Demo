package g;

import com.google.android.gms.internal.ads.zzbv;
import com.google.android.gms.internal.ads.zzum;
import com.google.android.gms.internal.ads.zzut;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class iw implements elv {

    /* renamed from: a, reason: collision with root package name */
    public int f19444a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f19445b;

    /* renamed from: c, reason: collision with root package name */
    public final zzum f19446c;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f19448e = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final Object f19447d = new Object();

    public iw(zzut zzutVar, boolean z) {
        this.f19446c = new zzum(zzutVar, z);
    }

    @Override // g.elv
    public final zzbv zza() {
        return this.f19446c.zzC();
    }

    @Override // g.elv
    public final Object zzb() {
        return this.f19447d;
    }
}
