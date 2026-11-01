package g;

import com.google.android.gms.internal.ads.zzexh;
import com.google.android.gms.internal.ads.zzexs;
import com.google.android.gms.internal.ads.zzext;
import com.google.android.gms.internal.ads.zzhgf;

/* loaded from: classes3.dex */
public final class fqs implements zzexs {

    /* renamed from: a, reason: collision with root package name */
    public final bxr f17258a;

    /* renamed from: b, reason: collision with root package name */
    public zzexh f17259b;

    public /* synthetic */ fqs(bxr bxrVar) {
        this.f17258a = bxrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexs
    public final /* bridge */ /* synthetic */ zzexs zza(zzexh zzexhVar) {
        this.f17259b = zzexhVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzexs
    public final zzext zzb() {
        zzhgf.zzc(this.f17259b, zzexh.class);
        return new cnx(this.f17258a, this.f17259b);
    }
}
