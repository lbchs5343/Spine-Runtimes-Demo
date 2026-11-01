package g;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.zzapb;
import com.google.android.gms.internal.ads.zzapp;
import com.google.android.gms.internal.ads.zzavd;
import com.google.android.gms.internal.ads.zzazb;
import com.google.android.gms.internal.ads.zzazc;
import com.google.android.gms.internal.ads.zzazl;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbie;
import com.google.android.gms.internal.ads.zzbry;
import com.google.android.gms.internal.ads.zzcao;
import com.google.android.gms.internal.ads.zzcbj;
import com.google.android.gms.internal.ads.zzcbk;
import com.google.android.gms.internal.ads.zzdoc;
import com.google.android.gms.internal.ads.zzdsm;
import com.google.android.gms.internal.ads.zzffs;
import com.google.android.gms.internal.ads.zzfxd;
import com.google.android.gms.internal.ads.zzgei;
import com.tencent.bugly.BuglyStrategy;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes.dex */
public final class efr implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f15454a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15455b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15456c;

    public /* synthetic */ efr(int i, Object obj, Object obj2, boolean z) {
        this.f15455b = i;
        this.f15456c = obj;
        this.f15454a = obj2;
    }

    public efr(zzbie zzbieVar, aph aphVar, deq deqVar) {
        this.f15455b = 22;
        this.f15456c = aphVar;
        this.f15454a = deqVar;
    }

    public /* synthetic */ efr(Object obj, int i, Object obj2) {
        this.f15455b = i;
        this.f15454a = obj;
        this.f15456c = obj2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:186:0x0368, code lost:
    
        if (r1 == 0) goto L158;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        View view;
        View view2;
        Context context;
        View view3;
        fmp fmpVar;
        zzffs zzffsVar;
        MediaFormat format;
        Object[] objArr = 0;
        try {
            switch (this.f15455b) {
                case 0:
                    dzh dzhVar = (dzh) this.f15454a;
                    ((gkb) ((fzx) ((emr) dzhVar.f15122g).n).ia).dq(((hcl) dzhVar.i).j, (Bitmap) this.f15456c);
                    return;
                case 1:
                    view = ((fde) ((eie) this.f15454a).f15585g).ia;
                    ((cdf) view).setImageBitmap((Bitmap) this.f15456c);
                    return;
                case 2:
                    view2 = ((fde) ((eie) this.f15454a).f15585g).ia;
                    ((cdf) view2).setBackground((BitmapDrawable) this.f15456c);
                    return;
                case 3:
                    fnq fnqVar = (fnq) this.f15454a;
                    Bitmap bitmap = (Bitmap) this.f15456c;
                    if (bitmap != null) {
                        context = ((fde) fnqVar.f17099f).s;
                        BitmapDrawable bitmapDrawable = new BitmapDrawable(context.getResources(), bitmap);
                        view3 = ((fde) fnqVar.f17099f).ia;
                        ((cdf) view3).setBackground(bitmapDrawable);
                        return;
                    }
                    return;
                case 4:
                    aqd aqdVar = (aqd) ((evf) this.f15454a).f16224f;
                    aqdVar.ad(new BitmapDrawable(aqdVar.s.getResources(), (Bitmap) this.f15456c));
                    return;
                case 5:
                    View view4 = (View) this.f15456c;
                    int width = view4.getWidth();
                    int height = view4.getHeight();
                    ffr ffrVar = (ffr) this.f15454a;
                    view4.setPivotX(egh.n((String) ffrVar.f16721f, width));
                    view4.setPivotY(egh.n((String) ffrVar.f16719c, height));
                    return;
                case 6:
                    fpd fpdVar = (fpd) this.f15454a;
                    ((gkb) ((akg) ((fnq) fpdVar.f17188d).f17099f).ia).dq(((hcl) fpdVar.f17190f).j, (Bitmap) this.f15456c);
                    return;
                case 7:
                    try {
                        if (((eum) this.f15454a).f16185e == null) {
                            eum eumVar = (eum) this.f15454a;
                            dbj dbjVar = eumVar.n;
                            if (dbjVar == null) {
                                ByteBuffer byteBuffer = (ByteBuffer) eumVar.i.f16548e;
                                byteBuffer.position(0);
                                cxf cxfVar = new cxf(byteBuffer, 0);
                                dbj dbjVar2 = new dbj(5, objArr == true ? 1 : 0);
                                dbjVar2.z = cxfVar;
                                eumVar.n = dbjVar2;
                            } else {
                                dbjVar.af();
                            }
                            eum eumVar2 = (eum) this.f15454a;
                            eumVar2.aa(eumVar2.ab(eumVar2.n));
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        ((eum) this.f15454a).f16185e = eum.f16181a;
                    }
                    LockSupport.unpark((Thread) this.f15456c);
                    return;
                case 8:
                    com.tencent.bugly.proguard.s.c((Context) this.f15456c, (BuglyStrategy) this.f15454a);
                    return;
                case 9:
                    nk nkVar = (nk) this.f15456c;
                    axs axsVar = (axs) this.f15454a;
                    cqh cqhVar = (cqh) axsVar.f11036a;
                    fbd fbdVar = (fbd) ((ecd) axsVar.f11039f).f15294g.get((dzu) axsVar.f11037d);
                    if (fbdVar == null) {
                        return;
                    }
                    if (!nkVar.isSuccess()) {
                        fbdVar.s(nkVar, null);
                        return;
                    }
                    axsVar.f11040g = true;
                    if (cqhVar.requiresSignIn()) {
                        if (!axsVar.f11040g || (fmpVar = (fmp) axsVar.f11038e) == null) {
                            return;
                        }
                        cqhVar.getRemoteService(fmpVar, (Set) axsVar.h);
                        return;
                    }
                    try {
                        cqhVar.getRemoteService(null, cqhVar._bd());
                        return;
                    } catch (SecurityException e3) {
                        Log.e("GoogleApiManager", "Failed to get service from broker. ", e3);
                        cqhVar.disconnect("Failed to get service from broker.");
                        fbdVar.s(new nk(10), null);
                        return;
                    }
                case 10:
                    aan aanVar = (aan) this.f15454a;
                    gpi gpiVar = (gpi) this.f15456c;
                    nk zaa = gpiVar.zaa();
                    if (zaa.isSuccess()) {
                        cnd zab = gpiVar.zab();
                        ckd.k(zab);
                        nk zaa2 = zab.zaa();
                        if (!zaa2.isSuccess()) {
                            Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(String.valueOf(zaa2)), new Exception());
                            aanVar.f9858b.l(zaa2);
                            aanVar.f9859d.disconnect();
                            return;
                        }
                        axs axsVar2 = aanVar.f9858b;
                        fmp zab2 = zab.zab();
                        Set set = aanVar.f9862g;
                        axsVar2.getClass();
                        if (zab2 == null || set == null) {
                            Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                            axsVar2.l(new nk(4));
                        } else {
                            axsVar2.f11038e = zab2;
                            axsVar2.h = set;
                            if (axsVar2.f11040g) {
                                ((cqh) axsVar2.f11036a).getRemoteService(zab2, set);
                            }
                        }
                    } else {
                        aanVar.f9858b.l(zaa);
                    }
                    aanVar.f9859d.disconnect();
                    return;
                case 11:
                    bya byaVar = (bya) this.f15456c;
                    try {
                        byaVar.f12428b.zzg(ao.ai(byaVar.f12427a, (qo) this.f15454a));
                        return;
                    } catch (RemoteException e4) {
                        agd.f("Failed to load ad.", e4);
                        return;
                    }
                case 12:
                    der derVar = (der) this.f15456c;
                    zzdoc[] zzdocVarArr = (zzdoc[]) this.f15454a;
                    derVar.getClass();
                    zzdoc zzdocVar = zzdocVarArr[0];
                    if (zzdocVar != null) {
                        derVar.x.zzb(zzgei.zzh(zzdocVar));
                        return;
                    }
                    return;
                case 13:
                    tq tqVar = (tq) this.f15456c;
                    dzt dztVar = (dzt) this.f15454a;
                    hm hmVar = hm.EXECUTE_ASYNC_TIMEOUT;
                    ejd ejdVar = edc.f15338b;
                    tqVar.ag(hmVar, 3, ejdVar);
                    dztVar.q(ejdVar);
                    return;
                case 14:
                    tq tqVar2 = (tq) this.f15456c;
                    ejd ejdVar2 = (ejd) this.f15454a;
                    if (((eoy) tqVar2.o.f11036a) == null) {
                        int i = gbs.f17875a;
                        return;
                    } else {
                        efc efcVar = (efc) ((eoy) tqVar2.o.f11036a);
                        efcVar.f(ejdVar2, null, efcVar.f15424e, efcVar.f15421b);
                        return;
                    }
                case 15:
                    Future future = (Future) this.f15456c;
                    if (future.isDone() || future.isCancelled()) {
                        return;
                    }
                    Runnable runnable = (Runnable) this.f15454a;
                    future.cancel(true);
                    int i2 = gbs.f17875a;
                    if (runnable != null) {
                        runnable.run();
                        return;
                    }
                    return;
                case 16:
                    ((gan) this.f15456c).zzaw();
                    if (fbc.o()) {
                        ((gan) this.f15456c).zzaz().p(this);
                        return;
                    }
                    boolean z = ((emo) this.f15454a).f15807g != 0;
                    ((emo) this.f15454a).f15807g = 0L;
                    if (z) {
                        ((emo) this.f15454a).c();
                        return;
                    }
                    return;
                case 17:
                    tq tqVar3 = (tq) this.f15456c;
                    emr emrVar = (emr) this.f15454a;
                    hm hmVar2 = hm.EXECUTE_ASYNC_TIMEOUT;
                    ejd ejdVar3 = edc.f15338b;
                    tqVar3.ag(hmVar2, 7, ejdVar3);
                    duz duzVar = fkz.f16953g;
                    fun funVar = fun.f17435a;
                    gkr gkrVar = (gkr) emrVar.n;
                    if (ejdVar3 == null || ejdVar3.f15636a != 0) {
                        gkrVar.o(ejdVar3 == null ? 1322 : cdy.j(ejdVar3.f15636a));
                        return;
                    }
                    if (!acw.u(funVar)) {
                        duz listIterator = funVar.listIterator(0);
                        while (listIterator.hasNext()) {
                            x xVar = (x) listIterator.next();
                            if ("a".equals(xVar.h)) {
                                gkrVar.i(xVar);
                                return;
                            }
                        }
                    }
                    gkrVar.o(1992);
                    return;
                case 18:
                    try {
                        ((zzapb) this.f15454a).f4432f.put((zzapp) this.f15456c);
                        return;
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                case 19:
                    tq tqVar4 = (tq) this.f15456c;
                    fdy fdyVar = (fdy) this.f15454a;
                    hm hmVar3 = hm.EXECUTE_ASYNC_TIMEOUT;
                    ejd ejdVar4 = edc.f15338b;
                    tqVar4.ag(hmVar3, 9, ejdVar4);
                    duz duzVar2 = fkz.f16953g;
                    fdyVar.i(ejdVar4, fun.f17435a);
                    return;
                case 20:
                    zzazl zzazlVar = (zzazl) this.f15454a;
                    View view5 = (View) this.f15456c;
                    zzazc zzazcVar = zzazlVar.h;
                    String str = zzazlVar.n;
                    try {
                        zzazb zzazbVar = new zzazb(zzazlVar.o, zzazlVar.f4636b, zzazlVar.f4635a, zzazlVar.k, zzazlVar.f4638d, zzazlVar.f4641g, zzazlVar.f4640f, zzazlVar.f4637c);
                        Context zzb = ti.f20033a.p.zzb();
                        if (zzb != null && !TextUtils.isEmpty(str)) {
                            String str2 = (String) view5.getTag(zzb.getResources().getIdentifier((String) edt.f15376a.f15379d.zza(zzbcn.zzae), TTDownloadField.TT_ID, zzb.getPackageName()));
                            if (str2 != null && str2.equals(str)) {
                                return;
                            }
                        }
                        aot p = zzazlVar.p(view5, zzazbVar);
                        int i3 = p.f10587c;
                        zzazbVar.zzj();
                        if (p.f10586b == 0 && i3 == 0) {
                            return;
                        }
                        if (i3 == 0) {
                            if (zzazbVar.f4623b == 0) {
                                return;
                            }
                        }
                        if (zzazcVar.zzc(zzazbVar)) {
                            return;
                        }
                        zzazcVar.zza(zzazbVar);
                        return;
                    } catch (Exception e5) {
                        agd.f("Exception in fetchContentOnUIThread", e5);
                        ti.f20033a.f20034ab.zzw(e5, "ContentFetchTask.fetchContent");
                        return;
                    }
                case 21:
                    ad adVar = (ad) this.f15456c;
                    String str3 = (String) this.f15454a;
                    WebView webView = adVar.i;
                    Context context2 = adVar.f10029f;
                    Uri parse = Uri.parse(str3);
                    try {
                        parse = (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlI)).booleanValue() || (zzffsVar = adVar.f10026c) == null) ? adVar.k.zza(parse, context2, webView, null) : zzffsVar.zza(parse, context2, webView, null);
                    } catch (zzavd e6) {
                        zzfxd zzfxdVar = agd.f10175a;
                        ti.f20033a.f20034ab.zzw(e6, "TaggingLibraryJsInterface.recordClick");
                    }
                    adVar.h.zzc(parse.toString(), null);
                    return;
                case 22:
                    aph aphVar = (aph) this.f15456c;
                    deq deqVar = (deq) this.f15454a;
                    ctl ctlVar = aphVar.f12849a;
                    ctlVar.getClass();
                    try {
                        bjq zzn = deqVar.zzn();
                        if (zzn != null && ((View) bpp.b(zzn)).getParent() == null) {
                            ((cgp) ctlVar.h).addView((View) bpp.b(zzn));
                            ctlVar.k = deqVar;
                            int i4 = zzbie.f4828a;
                            throw null;
                        }
                    } catch (RemoteException e7) {
                        agd.g("#007 Could not call remote method.", e7);
                    }
                    agd.b("Could not bind.");
                    return;
                case 23:
                    bli bliVar = ti.f20033a.u;
                    bli.q(((zzbry) this.f15454a).f4942a, (AdOverlayInfoParcel) this.f15456c, true);
                    return;
                case 24:
                    zzcao zzcaoVar = (zzcao) this.f15454a;
                    try {
                        zzcaoVar.zzc(xo.i((Context) this.f15456c));
                        return;
                    } catch (ctc | IOException | IllegalStateException e8) {
                        zzcaoVar.zzd(e8);
                        agd.f("Exception while getting advertising Id info", e8);
                        return;
                    }
                case 25:
                    if (((chw) ((ci) this.f15456c)).f12905e) {
                        ((chw) ((err) this.f15454a).f16048b).o();
                        return;
                    }
                    try {
                        ((chw) ((err) this.f15454a).f16048b).m(((bea) ((err) this.f15454a).f16049c).then((ci) this.f15456c));
                        return;
                    } catch (bji e9) {
                        if (e9.getCause() instanceof Exception) {
                            ((chw) ((err) this.f15454a).f16048b).l((Exception) e9.getCause());
                            return;
                        } else {
                            ((chw) ((err) this.f15454a).f16048b).l(e9);
                            return;
                        }
                    } catch (Exception e10) {
                        ((chw) ((err) this.f15454a).f16048b).l(e10);
                        return;
                    }
                case 26:
                    zzcbj zzcbjVar = (zzcbj) this.f15454a;
                    MediaPlayer mediaPlayer = (MediaPlayer) this.f15456c;
                    HashMap hashMap = zzcbj.f5139a;
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbW)).booleanValue() && zzcbjVar.f5145g != null && mediaPlayer != null) {
                        try {
                            MediaPlayer.TrackInfo[] trackInfo = mediaPlayer.getTrackInfo();
                            if (trackInfo != null) {
                                HashMap hashMap2 = new HashMap();
                                for (MediaPlayer.TrackInfo trackInfo2 : trackInfo) {
                                    if (trackInfo2 != null) {
                                        int trackType = trackInfo2.getTrackType();
                                        if (trackType == 1) {
                                            MediaFormat format2 = trackInfo2.getFormat();
                                            if (format2 != null) {
                                                if (format2.containsKey("frame-rate")) {
                                                    try {
                                                        hashMap2.put("frameRate", String.valueOf(format2.getFloat("frame-rate")));
                                                    } catch (ClassCastException unused2) {
                                                        hashMap2.put("frameRate", String.valueOf(format2.getInteger("frame-rate")));
                                                    }
                                                }
                                                if (format2.containsKey(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_BIT_RATE)) {
                                                    Integer valueOf = Integer.valueOf(format2.getInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_BIT_RATE));
                                                    zzcbjVar.l = valueOf;
                                                    hashMap2.put("bitRate", String.valueOf(valueOf));
                                                }
                                                if (format2.containsKey(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_WIDTH) && format2.containsKey(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_HEIGHT)) {
                                                    hashMap2.put("resolution", format2.getInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_WIDTH) + "x" + format2.getInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_HEIGHT));
                                                }
                                                if (format2.containsKey("mime")) {
                                                    hashMap2.put("videoMime", format2.getString("mime"));
                                                }
                                                if (Build.VERSION.SDK_INT >= 30 && format2.containsKey("codecs-string")) {
                                                    hashMap2.put("videoCodec", format2.getString("codecs-string"));
                                                }
                                            }
                                        } else if (trackType == 2 && (format = trackInfo2.getFormat()) != null) {
                                            if (format.containsKey("mime")) {
                                                hashMap2.put("audioMime", format.getString("mime"));
                                            }
                                            if (Build.VERSION.SDK_INT >= 30 && format.containsKey("codecs-string")) {
                                                hashMap2.put("audioCodec", format.getString("codecs-string"));
                                            }
                                        }
                                    }
                                }
                                if (!hashMap2.isEmpty()) {
                                    zzcbjVar.f5145g.zzd("onMetadataEvent", hashMap2);
                                }
                            }
                        } catch (RuntimeException e11) {
                            ti.f20033a.f20034ab.zzw(e11, "AdMediaPlayerView.reportMetadata");
                        }
                    }
                    zzcbk zzcbkVar = zzcbjVar.f5141c;
                    if (zzcbkVar != null) {
                        zzcbkVar.zzf();
                        return;
                    }
                    return;
                case 27:
                    err errVar = (err) this.f15454a;
                    chw chwVar = (chw) errVar.f16048b;
                    try {
                        ci ciVar = (ci) ((dnb) errVar.f16049c).then((ci) this.f15456c);
                        if (ciVar == null) {
                            errVar.onFailure(new NullPointerException("Continuation returned null"));
                            return;
                        }
                        fpe fpeVar = fot.f17160b;
                        chw chwVar2 = (chw) ciVar;
                        ja jaVar = chwVar2.i;
                        jaVar.f(new err((Executor) fpeVar, (etk) errVar));
                        chwVar2.n();
                        jaVar.f(new err((Executor) fpeVar, (fbr) errVar));
                        chwVar2.n();
                        jaVar.f(new err((Executor) fpeVar, (brm) errVar));
                        chwVar2.n();
                        return;
                    } catch (bji e12) {
                        if (e12.getCause() instanceof Exception) {
                            chwVar.l((Exception) e12.getCause());
                            return;
                        } else {
                            chwVar.l(e12);
                            return;
                        }
                    } catch (Exception e13) {
                        chwVar.l(e13);
                        return;
                    }
                case 28:
                    zzdsm zzdsmVar = (zzdsm) this.f15456c;
                    Long l = (Long) this.f15454a;
                    ti.f20033a.v.getClass();
                    fmk.d(zzdsmVar, "cld_r", SystemClock.elapsedRealtime() - l.longValue());
                    return;
                default:
                    ((cgp) ((ctl) this.f15456c).h).addView((View) bpp.b((bjq) this.f15454a));
                    return;
            }
        } catch (Throwable th) {
            LockSupport.unpark((Thread) this.f15456c);
            throw th;
        }
        LockSupport.unpark((Thread) this.f15456c);
        throw th;
    }
}
