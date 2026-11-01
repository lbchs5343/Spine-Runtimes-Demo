package g;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzcha;
import com.google.android.gms.internal.ads.zzcpd;
import com.google.android.gms.internal.ads.zzdor;
import com.google.android.gms.internal.ads.zzely;
import com.google.android.gms.internal.ads.zzenh;
import com.google.android.gms.internal.ads.zzfek;
import com.google.android.gms.internal.ads.zzfvh;
import com.google.android.gms.internal.ads.zzfvi;
import com.google.android.gms.internal.ads.zzgwc;
import com.google.android.gms.internal.ads.zzgwk;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final /* synthetic */ class eap implements zzcha, zzenh, bjz, alf, zzfvi {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15203b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f15204c;

    public /* synthetic */ eap(int i, Object obj) {
        this.f15203b = i;
        this.f15204c = obj;
    }

    private final void d() {
        synchronized (((zzely) this.f15204c)) {
            ((zzely) this.f15204c).f7247g = null;
        }
    }

    private final /* bridge */ /* synthetic */ void e(Object obj) {
        zzcpd zzcpdVar = (zzcpd) obj;
        synchronized (((zzely) this.f15204c)) {
            try {
                zzcpd zzcpdVar2 = ((zzely) this.f15204c).f7247g;
                if (zzcpdVar2 != null) {
                    zzcpdVar2.zzb();
                }
                ((zzely) this.f15204c).f7247g = zzcpdVar;
                zzcpdVar.zzk();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.alf
    public void a(String str, int i, Throwable th, byte[] bArr, Map map) {
        ((bsz) this.f15204c).am(str, i, th, bArr, map);
    }

    @Override // g.bjz
    public Object zza(String str) {
        Iterator it = zzgwc.zzb("GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt").iterator();
        Exception exc = null;
        while (it.hasNext()) {
            try {
                return ((zzgwk) this.f15204c).zza(str, (Provider) it.next());
            } catch (Exception e2) {
                if (exc == null) {
                    exc = e2;
                }
            }
        }
        throw new GeneralSecurityException("No good Provider found.", exc);
    }

    @Override // com.google.android.gms.internal.ads.zzenh
    public void zza() {
        switch (this.f15203b) {
            case 1:
                d();
                return;
            default:
                synchronized (((zzfek) this.f15204c)) {
                    ((zzfek) this.f15204c).h = null;
                }
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfvi
    public void zza(zzfvh zzfvhVar) {
        axs axsVar = (axs) this.f15204c;
        if (!TextUtils.isEmpty(zzfvhVar.zzb())) {
            if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlf)).booleanValue()) {
                axsVar.f11039f = zzfvhVar.zzb();
            }
        }
        switch (zzfvhVar.zza()) {
            case 8152:
                String str = "onLMDOverlayOpened";
                zzcaj.zze.execute(new eax(axsVar, str, new HashMap(), 24, false));
                break;
            case 8153:
                String str2 = "onLMDOverlayClicked";
                zzcaj.zze.execute(new eax(axsVar, str2, new HashMap(), 24, false));
                break;
            case 8155:
                String str3 = "onLMDOverlayClose";
                zzcaj.zze.execute(new eax(axsVar, str3, new HashMap(), 24, false));
                break;
            case 8157:
                axsVar.f11039f = null;
                axsVar.f11036a = null;
                axsVar.f11040g = false;
                break;
            case 8160:
            case 8161:
            case 8162:
                HashMap hashMap = new HashMap();
                hashMap.put(AVErrorInfo.ERROR, String.valueOf(zzfvhVar.zza()));
                zzcaj.zze.execute(new eax(axsVar, "onLMDOverlayFailedToOpen", hashMap, 24, false));
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcha
    public void zza(boolean z, int i, String str, String str2) {
        zzcfk zzcfkVar = ((cwg) this.f15204c).j;
        if (zzcfkVar != null) {
            zzcfkVar.zzaa();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzenh
    public void zzb(Object obj) {
        switch (this.f15203b) {
            case 1:
                e(obj);
                return;
            default:
                zzdor zzdorVar = (zzdor) obj;
                synchronized (((zzfek) this.f15204c)) {
                    try {
                        ((zzfek) this.f15204c).h = zzdorVar;
                        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdE)).booleanValue()) {
                            zzdorVar.zzd().zza = ((zzfek) this.f15204c).f7831e;
                        }
                        ((zzfek) this.f15204c).h.zzk();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }
}
