package g;

import com.google.android.gms.internal.ads.zzfcj;
import com.google.android.gms.internal.ads.zzfcl;
import com.google.android.gms.internal.ads.zzfhm;
import com.google.android.gms.internal.ads.zzfhx;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class vv implements zzfhx {

    /* renamed from: a, reason: collision with root package name */
    public final String f20192a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f20193b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfcj f20194c;

    /* renamed from: d, reason: collision with root package name */
    public final gby f20195d;

    /* renamed from: e, reason: collision with root package name */
    public final zzfcl f20196e;

    /* renamed from: f, reason: collision with root package name */
    public final aeh f20197f;

    /* renamed from: g, reason: collision with root package name */
    public final zzfhm f20198g;

    public vv(zzfcj zzfcjVar, zzfcl zzfclVar, aeh aehVar, String str, Executor executor, gby gbyVar, zzfhm zzfhmVar) {
        this.f20194c = zzfcjVar;
        this.f20196e = zzfclVar;
        this.f20197f = aehVar;
        this.f20192a = str;
        this.f20193b = executor;
        this.f20195d = gbyVar;
        this.f20198g = zzfhmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfhx
    public final zzfhm zza() {
        return this.f20198g;
    }

    @Override // com.google.android.gms.internal.ads.zzfhx
    public final Executor zzb() {
        return this.f20193b;
    }
}
