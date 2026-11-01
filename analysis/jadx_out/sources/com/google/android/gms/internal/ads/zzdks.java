package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.agd;
import g.cbv;
import g.ckd;
import g.edt;
import g.eno;
import g.mx;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzdks {

    /* renamed from: a, reason: collision with root package name */
    public final zzdpn f6140a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdoc f6141b;

    /* renamed from: c, reason: collision with root package name */
    public zzdkq f6142c = null;

    public zzdks(zzdpn zzdpnVar, zzdoc zzdocVar) {
        this.f6140a = zzdpnVar;
        this.f6141b = zzdocVar;
    }

    public static final int d(Context context, int i, String str) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
        }
        mx mxVar = cbv.f12612a.f12615d;
        return mx.k(context, i);
    }

    public final View zza(final View view, final WindowManager windowManager) throws zzcfw {
        zzcfk zza = this.f6140a.zza(eno.zzc(), null, null);
        zza.zzF().setVisibility(4);
        zza.zzF().setContentDescription("policy_validator");
        zza.zzag("/sendMessageToSdk", new zzbjr() { // from class: com.google.android.gms.internal.ads.zzdkm
            @Override // com.google.android.gms.internal.ads.zzbjr
            public final void zza(Object obj, Map map) {
                zzdks.this.f6141b.zzj("sendMessageToNativeJs", map);
            }
        });
        zza.zzag("/hideValidatorOverlay", new zzbjr() { // from class: com.google.android.gms.internal.ads.zzdkn
            @Override // com.google.android.gms.internal.ads.zzbjr
            public final void zza(Object obj, Map map) {
                zzdks zzdksVar = zzdks.this;
                WindowManager windowManager2 = windowManager;
                View view2 = view;
                zzcfk zzcfkVar = (zzcfk) obj;
                zzdksVar.getClass();
                agd.c("Hide native ad policy validator overlay.");
                zzcfkVar.zzF().setVisibility(8);
                if (zzcfkVar.zzF().getWindowToken() != null) {
                    windowManager2.removeView(zzcfkVar.zzF());
                }
                zzcfkVar.destroy();
                ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
                if (zzdksVar.f6142c == null || viewTreeObserver == null || !viewTreeObserver.isAlive()) {
                    return;
                }
                viewTreeObserver.removeOnScrollChangedListener(zzdksVar.f6142c);
            }
        });
        zza.zzag("/open", new zzbkd(null, null, null, null, null));
        WeakReference weakReference = new WeakReference(zza);
        zzbjr zzbjrVar = new zzbjr() { // from class: com.google.android.gms.internal.ads.zzdko
            /* JADX WARN: Type inference failed for: r1v13, types: [com.google.android.gms.internal.ads.zzdkq] */
            @Override // com.google.android.gms.internal.ads.zzbjr
            public final void zza(Object obj, final Map map) {
                final zzdks zzdksVar = zzdks.this;
                final View view2 = view;
                final WindowManager windowManager2 = windowManager;
                final zzcfk zzcfkVar = (zzcfk) obj;
                zzdksVar.getClass();
                zzcfkVar.zzN().zzB(new zzcha() { // from class: com.google.android.gms.internal.ads.zzdkr
                    @Override // com.google.android.gms.internal.ads.zzcha
                    public final void zza(boolean z, int i, String str, String str2) {
                        zzdks zzdksVar2 = zzdks.this;
                        Map map2 = map;
                        zzdksVar2.getClass();
                        HashMap hashMap = new HashMap();
                        hashMap.put("messageType", "validatorHtmlLoaded");
                        hashMap.put(TTDownloadField.TT_ID, (String) map2.get(TTDownloadField.TT_ID));
                        zzdksVar2.f6141b.zzj("sendMessageToNativeJs", hashMap);
                    }
                });
                if (map == null) {
                    return;
                }
                Context context = view2.getContext();
                String str = (String) map.get("validator_width");
                zzbce zzbceVar = zzbcn.zzhK;
                zzbcl zzbclVar = edt.f15376a.f15379d;
                int d2 = zzdks.d(context, ((Integer) zzbclVar.zza(zzbceVar)).intValue(), str);
                int d3 = zzdks.d(context, ((Integer) zzbclVar.zza(zzbcn.zzhL)).intValue(), (String) map.get("validator_height"));
                int d4 = zzdks.d(context, 0, (String) map.get("validator_x"));
                int d5 = zzdks.d(context, 0, (String) map.get("validator_y"));
                zzcfkVar.zzaj(zzche.zzb(d2, d3));
                try {
                    zzcfkVar.zzG().getSettings().setUseWideViewPort(((Boolean) zzbclVar.zza(zzbcn.zzhM)).booleanValue());
                    zzcfkVar.zzG().getSettings().setLoadWithOverviewMode(((Boolean) zzbclVar.zza(zzbcn.zzhN)).booleanValue());
                } catch (NullPointerException unused) {
                }
                final WindowManager.LayoutParams q = ckd.q();
                q.x = d4;
                q.y = d5;
                windowManager2.updateViewLayout(zzcfkVar.zzF(), q);
                final String str2 = (String) map.get("orientation");
                Rect rect = new Rect();
                if (view2.getGlobalVisibleRect(rect)) {
                    final int i = (("1".equals(str2) || "2".equals(str2)) ? rect.bottom : rect.top) - d5;
                    zzdksVar.f6142c = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.gms.internal.ads.zzdkq
                        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                        public final void onScrollChanged() {
                            Rect rect2 = new Rect();
                            if (view2.getGlobalVisibleRect(rect2)) {
                                zzcfk zzcfkVar2 = zzcfkVar;
                                if (zzcfkVar2.zzF().getWindowToken() == null) {
                                    return;
                                }
                                int i2 = i;
                                WindowManager.LayoutParams layoutParams = q;
                                String str3 = str2;
                                if ("1".equals(str3) || "2".equals(str3)) {
                                    layoutParams.y = rect2.bottom - i2;
                                } else {
                                    layoutParams.y = rect2.top - i2;
                                }
                                windowManager2.updateViewLayout(zzcfkVar2.zzF(), layoutParams);
                            }
                        }
                    };
                    ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
                    if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                        viewTreeObserver.addOnScrollChangedListener(zzdksVar.f6142c);
                    }
                }
                String str3 = (String) map.get("overlay_url");
                if (TextUtils.isEmpty(str3)) {
                    return;
                }
                zzcfkVar.loadUrl(str3);
            }
        };
        zzdoc zzdocVar = this.f6141b;
        zzdocVar.zzm(weakReference, "/loadNativeAdPolicyViolations", zzbjrVar);
        zzdocVar.zzm(new WeakReference(zza), "/showValidatorOverlay", new zzbjr() { // from class: com.google.android.gms.internal.ads.zzdkp
            @Override // com.google.android.gms.internal.ads.zzbjr
            public final void zza(Object obj, Map map) {
                agd.c("Show native ad policy validator overlay.");
                ((zzcfk) obj).zzF().setVisibility(0);
            }
        });
        return zza.zzF();
    }
}
