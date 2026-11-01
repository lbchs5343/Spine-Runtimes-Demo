package g;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbjr;
import com.google.android.gms.internal.ads.zzdej;
import com.google.android.gms.internal.ads.zzdhu;
import com.google.android.gms.internal.ads.zzfxd;
import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes3.dex */
public final class gfb implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18017a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f18018b;

    public gfb(com.google.android.gms.internal.ads.v vVar) {
        this.f18017a = 3;
        this.f18018b = vVar;
    }

    public /* synthetic */ gfb(zzdhu zzdhuVar, int i) {
        this.f18017a = i;
        switch (i) {
            case 1:
                this.f18018b = new WeakReference(zzdhuVar);
                break;
            case 2:
                this.f18018b = new WeakReference(zzdhuVar);
                break;
            default:
                this.f18018b = new WeakReference(zzdhuVar);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        switch (this.f18017a) {
            case 0:
                zzdhu zzdhuVar = (zzdhu) ((WeakReference) this.f18018b).get();
                if (zzdhuVar == null) {
                    return;
                }
                zzdej zzdejVar = zzdhuVar.t;
                if ("_ac".equals((String) map.get("eventName"))) {
                    zzdhuVar.f6000b.onAdClicked();
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkt)).booleanValue()) {
                        zzdejVar.zzdG();
                        if (TextUtils.isEmpty((CharSequence) map.get("sccg"))) {
                            return;
                        }
                        zzdejVar.zzdf();
                        return;
                    }
                    return;
                }
                return;
            case 1:
                zzdhu zzdhuVar2 = (zzdhu) ((WeakReference) this.f18018b).get();
                if (zzdhuVar2 == null) {
                    return;
                }
                zzdej zzdejVar2 = zzdhuVar2.t;
                zzdhuVar2.f6000b.onAdClicked();
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkt)).booleanValue()) {
                    zzdejVar2.zzdG();
                    if (TextUtils.isEmpty((CharSequence) map.get("sccg"))) {
                        return;
                    }
                    zzdejVar2.zzdf();
                    return;
                }
                return;
            case 2:
                zzdhu zzdhuVar3 = (zzdhu) ((WeakReference) this.f18018b).get();
                if (zzdhuVar3 == null) {
                    return;
                }
                zzdhuVar3.f5999ab.zza();
                return;
            default:
                if (map != null) {
                    String str = (String) map.get(MediaFormat.KEY_HEIGHT);
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    try {
                        int parseInt = Integer.parseInt(str);
                        synchronized (((com.google.android.gms.internal.ads.v) this.f18018b)) {
                            try {
                                com.google.android.gms.internal.ads.v vVar = (com.google.android.gms.internal.ads.v) this.f18018b;
                                if (vVar.au != parseInt) {
                                    vVar.au = parseInt;
                                    vVar.requestLayout();
                                }
                            } finally {
                            }
                        }
                        return;
                    } catch (Exception unused) {
                        zzfxd zzfxdVar = agd.f10175a;
                        return;
                    }
                }
                return;
        }
    }
}
