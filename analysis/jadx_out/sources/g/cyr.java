package g;

import android.app.Activity;
import com.google.android.gms.internal.ads.zzeeb;
import com.google.android.gms.internal.ads.zzeec;

/* loaded from: classes3.dex */
public final class cyr extends zzeeb {

    /* renamed from: a, reason: collision with root package name */
    public String f13776a;

    /* renamed from: b, reason: collision with root package name */
    public Activity f13777b;

    /* renamed from: c, reason: collision with root package name */
    public cwg f13778c;

    /* renamed from: d, reason: collision with root package name */
    public String f13779d;

    @Override // com.google.android.gms.internal.ads.zzeeb
    public final zzeeb zza(Activity activity) {
        if (activity == null) {
            throw new NullPointerException("Null activity");
        }
        this.f13777b = activity;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeeb
    public final zzeeb zzb(cwg cwgVar) {
        this.f13778c = cwgVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeeb
    public final zzeeb zzc(String str) {
        this.f13779d = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeeb
    public final zzeeb zzd(String str) {
        this.f13776a = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeeb
    public final zzeec zze() {
        Activity activity = this.f13777b;
        if (activity != null) {
            return new hap(activity, this.f13778c, this.f13779d, this.f13776a);
        }
        throw new IllegalStateException("Missing required properties: activity");
    }
}
