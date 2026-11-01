package g;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzdor;
import com.google.android.gms.internal.ads.zzenh;
import com.google.android.gms.internal.ads.zzfeq;
import com.google.android.gms.internal.ads.zzfuk;
import com.google.android.gms.internal.ads.zzful;
import com.google.android.gms.internal.ads.zzfvf;
import com.google.android.gms.internal.ads.zzfvi;
import com.google.android.gms.internal.ads.zzfvk;
import com.google.android.gms.internal.ads.zzfvo;
import g.fia;
import g.fkk;
import g.fwu;
import java.util.Arrays;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
public final class ecv implements zzenh, zzful, anu, btm {

    /* renamed from: a, reason: collision with root package name */
    public final Object f15320a;

    public /* synthetic */ ecv(Object obj) {
        this.f15320a = obj;
    }

    @Override // g.anu
    public boolean c(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (((anu[]) this.f15320a)[i].c(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // g.anu
    public cyk e(Class cls) {
        for (int i = 0; i < 2; i++) {
            anu anuVar = ((anu[]) this.f15320a)[i];
            if (anuVar.c(cls)) {
                return anuVar.e(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.ads.zzenh
    public void zza() {
        synchronized (((zzfeq) this.f15320a)) {
            ((zzfeq) this.f15320a).f7842b = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzful
    public void zza(zzfvk zzfvkVar, zzfvi zzfviVar) {
        ((fia) this.f15320a).g(zzfvkVar, zzfviVar, 2);
    }

    @Override // g.btm
    public void zza(String str, Bundle bundle) {
        bsz bszVar = (bsz) this.f15320a;
        if (!TextUtils.isEmpty(str)) {
            bszVar.zzaz().p(new eax(this, str, bundle, 22));
            return;
        }
        cyg cygVar = bszVar.m;
        if (cygVar != null) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.i("_err", "AppId not known when logging event");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzful
    public void zzb(final zzfuk zzfukVar, final zzfvi zzfviVar) {
        final fia fiaVar = (fia) this.f15320a;
        fwu fwuVar = fiaVar.f16824c;
        if (fwuVar == null) {
            fia.f16823b.zza("error: %s", "Play Store not found.");
        } else if (fia.f(zzfviVar, "Failed to apply OverlayDisplayDismissRequest: missing appId and sessionToken.", Arrays.asList(zzfukVar.zzb(), zzfukVar.zza()))) {
            fwuVar.k(new zzfvo(fwuVar, new Runnable() { // from class: com.google.android.gms.internal.ads.zzfut
                @Override // java.lang.Runnable
                public final void run() {
                    fia fiaVar2 = fia.this;
                    zzfuk zzfukVar2 = zzfukVar;
                    zzfvi zzfviVar2 = zzfviVar;
                    String str = fiaVar2.f16825d;
                    try {
                        fwu fwuVar2 = fiaVar2.f16824c;
                        if (fwuVar2 == null) {
                            throw null;
                        }
                        zzftu zzftuVar = fwuVar2.h;
                        if (zzftuVar == null) {
                            return;
                        }
                        final Bundle bundle = new Bundle();
                        bundle.putString("callerPackage", str);
                        fia.e(zzfukVar2.zzb(), new Consumer() { // from class: com.google.android.gms.internal.ads.zzfuw
                            @Override // java.util.function.Consumer
                            /* renamed from: accept */
                            public final void n(Object obj) {
                                zzfvv zzfvvVar = fia.f16823b;
                                bundle.putString("sessionToken", (String) obj);
                            }

                            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                                return j$.util.function.j.$default$andThen(this, consumer);
                            }
                        });
                        fia.e(zzfukVar2.zza(), new Consumer() { // from class: com.google.android.gms.internal.ads.zzfux
                            @Override // java.util.function.Consumer
                            /* renamed from: accept */
                            public final void n(Object obj) {
                                zzfvv zzfvvVar = fia.f16823b;
                                bundle.putString("appId", (String) obj);
                            }

                            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                                return j$.util.function.j.$default$andThen(this, consumer);
                            }
                        });
                        zzftuVar.zze(bundle, new fkk(fiaVar2, zzfviVar2));
                    } catch (RemoteException e2) {
                        fia.f16823b.zzb(e2, "dismiss overlay display from: %s", str);
                    }
                }
            }));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzenh
    public void zzb(Object obj) {
        zzdor zzdorVar = (zzdor) obj;
        synchronized (((zzfeq) this.f15320a)) {
            try {
                ((zzfeq) this.f15320a).f7842b = zzdorVar;
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdE)).booleanValue()) {
                    zzdorVar.zzd().zza = ((zzfeq) this.f15320a).f7841a;
                }
                ((zzfeq) this.f15320a).f7842b.zzk();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzful
    public void zzc(zzfvk zzfvkVar, zzfvi zzfviVar) {
        ((fia) this.f15320a).g(zzfvkVar, zzfviVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzful
    public void zzd(final zzfvf zzfvfVar, final zzfvi zzfviVar) {
        final fia fiaVar = (fia) this.f15320a;
        fwu fwuVar = fiaVar.f16824c;
        if (fwuVar == null) {
            fia.f16823b.zza("error: %s", "Play Store not found.");
        } else if (fia.f(zzfviVar, "Failed to apply OverlayDisplayShowRequest: missing appId and sessionToken.", Arrays.asList(null, zzfvfVar.zzh()))) {
            fwuVar.k(new zzfvo(fwuVar, new Runnable() { // from class: com.google.android.gms.internal.ads.zzfuy
                @Override // java.lang.Runnable
                public final void run() {
                    fia fiaVar2 = fia.this;
                    zzfvf zzfvfVar2 = zzfvfVar;
                    zzfvi zzfviVar2 = zzfviVar;
                    String str = fiaVar2.f16825d;
                    try {
                        fwu fwuVar2 = fiaVar2.f16824c;
                        if (fwuVar2 == null) {
                            throw null;
                        }
                        zzftu zzftuVar = fwuVar2.h;
                        if (zzftuVar == null) {
                            return;
                        }
                        final Bundle bundle = new Bundle();
                        bundle.putString("callerPackage", str);
                        bundle.putBinder("windowToken", zzfvfVar2.zzf());
                        fia.e(zzfvfVar2.zzg(), new Consumer() { // from class: com.google.android.gms.internal.ads.zzfvb
                            @Override // java.util.function.Consumer
                            /* renamed from: accept */
                            public final void n(Object obj) {
                                zzfvv zzfvvVar = fia.f16823b;
                                bundle.putString("adFieldEnifd", (String) obj);
                            }

                            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                                return j$.util.function.j.$default$andThen(this, consumer);
                            }
                        });
                        bundle.putInt("layoutGravity", zzfvfVar2.zzc());
                        bundle.putFloat("layoutVerticalMargin", zzfvfVar2.zza());
                        bundle.putInt("displayMode", 0);
                        bundle.putInt("triggerMode", 0);
                        bundle.putInt("windowWidthPx", zzfvfVar2.zze());
                        fia.e(null, new Consumer() { // from class: com.google.android.gms.internal.ads.zzfup
                            @Override // java.util.function.Consumer
                            /* renamed from: accept */
                            public final void n(Object obj) {
                                zzfvv zzfvvVar = fia.f16823b;
                                bundle.putString("deeplinkUrl", (String) obj);
                            }

                            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                                return j$.util.function.j.$default$andThen(this, consumer);
                            }
                        });
                        fia.e(null, new Consumer() { // from class: com.google.android.gms.internal.ads.zzfuq
                            @Override // java.util.function.Consumer
                            /* renamed from: accept */
                            public final void n(Object obj) {
                                zzfvv zzfvvVar = fia.f16823b;
                                bundle.putString("sessionToken", (String) obj);
                            }

                            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                                return j$.util.function.j.$default$andThen(this, consumer);
                            }
                        });
                        fia.e(zzfvfVar2.zzh(), new Consumer() { // from class: com.google.android.gms.internal.ads.zzfur
                            @Override // java.util.function.Consumer
                            /* renamed from: accept */
                            public final void n(Object obj) {
                                zzfvv zzfvvVar = fia.f16823b;
                                bundle.putString("appId", (String) obj);
                            }

                            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                                return j$.util.function.j.$default$andThen(this, consumer);
                            }
                        });
                        fia.e(null, new Consumer() { // from class: com.google.android.gms.internal.ads.zzfus
                            @Override // java.util.function.Consumer
                            /* renamed from: accept */
                            public final void n(Object obj) {
                                zzfvv zzfvvVar = fia.f16823b;
                                bundle.putString("thirdPartyAuthCallerId", (String) obj);
                            }

                            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                                return j$.util.function.j.$default$andThen(this, consumer);
                            }
                        });
                        bundle.putBoolean("stableSessionToken", true);
                        zzftuVar.zzf(str, bundle, new fkk(fiaVar2, zzfviVar2));
                    } catch (RemoteException e2) {
                        fia.f16823b.zzb(e2, "show overlay display from: %s", str);
                    }
                }
            }));
        }
    }
}
