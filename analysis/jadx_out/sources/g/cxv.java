package g;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzcao;
import com.google.android.gms.internal.ads.zzcdd;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzeiz;
import com.google.android.gms.internal.ads.zzgee;
import g.cxv;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
public final class cxv implements zzgee {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcao f13718a;

    public cxv(zzcao zzcaoVar) {
        this.f13718a = zzcaoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final void zza(Throwable th) {
        agd.d("Failed to load media data due to video view load failure.");
        this.f13718a.zzd(th);
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcfk zzcfkVar = (zzcfk) obj;
        if (zzcfkVar != null) {
            zzcfkVar.zzag("/video", new zzcdd(new Consumer() { // from class: com.google.android.gms.internal.ads.zzdme
                @Override // java.util.function.Consumer
                /* renamed from: accept */
                public final void n(Object obj2) {
                    Bundle bundle = new Bundle();
                    bundle.putString("mediaUrl", (String) obj2);
                    cxv.this.f13718a.zzc(bundle);
                }

                public final /* synthetic */ Consumer andThen(Consumer consumer) {
                    return j$.util.function.j.$default$andThen(this, consumer);
                }
            }));
            zzcfkVar.zzaa();
        } else {
            this.f13718a.zzd(new zzeiz(1, "Missing webview from video view future."));
        }
    }
}
