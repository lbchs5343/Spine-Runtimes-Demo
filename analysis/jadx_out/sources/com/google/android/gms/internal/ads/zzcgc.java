package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import g.akx;
import g.aqj;
import g.cwg;
import g.dcy;
import g.edt;
import g.esy;
import g.etg;
import g.gfo;
import g.gfx;
import g.ti;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzcgc extends FrameLayout implements zzcfk {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f5255a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcfk f5256b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcbu f5257c;

    /* JADX WARN: Multi-variable type inference failed */
    public zzcgc(zzcfk zzcfkVar) {
        super(zzcfkVar.getContext());
        this.f5255a = new AtomicBoolean();
        this.f5256b = zzcfkVar;
        this.f5257c = new zzcbu(zzcfkVar.zzE(), this, this);
        addView((View) zzcfkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final boolean canGoBack() {
        return this.f5256b.canGoBack();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void destroy() {
        final zzeeu zzP;
        final zzeew zzQ = zzQ();
        zzcfk zzcfkVar = this.f5256b;
        if (zzQ != null) {
            gfx gfxVar = esy.f16117a;
            gfxVar.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcga
                @Override // java.lang.Runnable
                public final void run() {
                    ti.f20033a.aa.zzi(zzeew.this.zza());
                }
            });
            Objects.requireNonNull(zzcfkVar);
            gfxVar.postDelayed(new zzcfy(zzcfkVar), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzfc)).intValue());
            return;
        }
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfe)).booleanValue() || (zzP = zzP()) == null) {
            zzcfkVar.destroy();
        } else {
            esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcgb
                @Override // java.lang.Runnable
                public final void run() {
                    zzP.zzf(new zzcfz(zzcgc.this));
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void goBack() {
        this.f5256b.goBack();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void loadData(String str, String str2, String str3) {
        this.f5256b.loadData(str, "text/html", str3);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.f5256b.loadDataWithBaseURL(str, str2, "text/html", "UTF-8", null);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void loadUrl(String str) {
        this.f5256b.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, g.evo
    public final void onAdClicked() {
        zzcfk zzcfkVar = this.f5256b;
        if (zzcfkVar != null) {
            zzcfkVar.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void onPause() {
        this.f5257c.zzf();
        this.f5256b.onPause();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void onResume() {
        this.f5256b.onResume();
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcfk
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f5256b.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcfk
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f5256b.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.f5256b.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.f5256b.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzA(int i) {
        this.f5256b.zzA(i);
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzB(int i) {
        this.f5257c.zzg(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzccf
    public final void zzC(zzcgm zzcgmVar) {
        this.f5256b.zzC(zzcgmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzcfb
    public final zzfet zzD() {
        return this.f5256b.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final Context zzE() {
        return this.f5256b.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzcgz
    public final View zzF() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final WebView zzG() {
        return (WebView) this.f5256b;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final WebViewClient zzH() {
        return this.f5256b.zzH();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzcgx
    public final zzavc zzI() {
        return this.f5256b.zzI();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final zzazz zzJ() {
        return this.f5256b.zzJ();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final zzbfm zzK() {
        return this.f5256b.zzK();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final cwg zzL() {
        return this.f5256b.zzL();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final cwg zzM() {
        return this.f5256b.zzM();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final zzchc zzN() {
        return ((v) this.f5256b).an;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzcgw
    public final zzche zzO() {
        return this.f5256b.zzO();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final zzeeu zzP() {
        return this.f5256b.zzP();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final zzeew zzQ() {
        return this.f5256b.zzQ();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzcgn
    public final zzfew zzR() {
        return this.f5256b.zzR();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final zzffs zzS() {
        return this.f5256b.zzS();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final dcy zzT() {
        return this.f5256b.zzT();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final String zzU() {
        return this.f5256b.zzU();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final List zzV() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt != this.f5256b) {
                arrayList.add(childAt);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzW(zzfet zzfetVar, zzfew zzfewVar) {
        this.f5256b.zzW(zzfetVar, zzfewVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzX() {
        this.f5257c.zze();
        this.f5256b.zzX();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzY() {
        this.f5256b.zzY();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzZ(int i) {
        this.f5256b.zzZ(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final void zza(String str) {
        ((v) this.f5256b).be(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzaA(String str, aqj aqjVar) {
        this.f5256b.zzaA(str, aqjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final boolean zzaB() {
        return this.f5256b.zzaB();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final boolean zzaC() {
        return this.f5256b.zzaC();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzcfk
    public final boolean zzaD(boolean z, int i) {
        if (!this.f5255a.compareAndSet(false, true)) {
            return true;
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzaT)).booleanValue()) {
            return false;
        }
        zzcfk zzcfkVar = this.f5256b;
        if (zzcfkVar.getParent() instanceof ViewGroup) {
            ((ViewGroup) zzcfkVar.getParent()).removeView((View) zzcfkVar);
        }
        zzcfkVar.zzaD(z, i);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final boolean zzaE() {
        return this.f5256b.zzaE();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final boolean zzaF() {
        return this.f5256b.zzaF();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final boolean zzaG() {
        return this.f5255a.get();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final boolean zzaH() {
        return this.f5256b.zzaH();
    }

    @Override // com.google.android.gms.internal.ads.zzcgu
    public final void zzaJ(etg etgVar, boolean z, boolean z2) {
        this.f5256b.zzaJ(etgVar, z, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcgu
    public final void zzaK(String str, String str2, int i) {
        this.f5256b.zzaK(str, str2, 14);
    }

    @Override // com.google.android.gms.internal.ads.zzcgu
    public final void zzaL(boolean z, int i, boolean z2) {
        this.f5256b.zzaL(z, i, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcgu
    public final void zzaM(boolean z, int i, String str, String str2, boolean z2) {
        this.f5256b.zzaM(z, i, str, str2, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcgu
    public final void zzaN(boolean z, int i, String str, boolean z2, boolean z3) {
        this.f5256b.zzaN(z, i, str, z2, z3);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzaa() {
        this.f5256b.zzaa();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzab() {
        this.f5256b.zzab();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzac(boolean z) {
        this.f5256b.zzac(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzad() {
        this.f5256b.zzad();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzae(String str, String str2, String str3) {
        this.f5256b.zzae(str, str2, null);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzaf() {
        this.f5256b.zzaf();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzag(String str, zzbjr zzbjrVar) {
        this.f5256b.zzag(str, zzbjrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzah() {
        zzeew zzQ;
        zzeeu zzP;
        TextView textView = new TextView(getContext());
        ti tiVar = ti.f20033a;
        esy esyVar = tiVar.z;
        Resources zze = tiVar.f20034ab.zze();
        textView.setText(zze != null ? zze.getString(R.string.s7) : "Test Ad");
        textView.setTextSize(15.0f);
        textView.setTextColor(-1);
        textView.setPadding(5, 0, 5, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-12303292);
        gradientDrawable.setCornerRadius(8.0f);
        textView.setBackground(gradientDrawable);
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 49));
        bringChildToFront(textView);
        zzbce zzbceVar = zzbcn.zzfe;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && (zzP = zzP()) != null) {
            zzP.zza(textView);
        } else if (((Boolean) edtVar.f15379d.zza(zzbcn.zzfd)).booleanValue() && (zzQ = zzQ()) != null && zzQ.zzb()) {
            tiVar.aa.zzg(zzQ.zza(), textView);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzai(cwg cwgVar) {
        this.f5256b.zzai(cwgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzaj(zzche zzcheVar) {
        this.f5256b.zzaj(zzcheVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzak(zzazz zzazzVar) {
        this.f5256b.zzak(zzazzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzal(boolean z) {
        this.f5256b.zzal(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzam() {
        setBackgroundColor(0);
        this.f5256b.setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzan(Context context) {
        this.f5256b.zzan(context);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzao(boolean z) {
        this.f5256b.zzao(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzap(zzbfk zzbfkVar) {
        this.f5256b.zzap(zzbfkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzaq(boolean z) {
        this.f5256b.zzaq(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzar(zzbfm zzbfmVar) {
        this.f5256b.zzar(zzbfmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzas(zzeeu zzeeuVar) {
        this.f5256b.zzas(zzeeuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzat(zzeew zzeewVar) {
        this.f5256b.zzat(zzeewVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzau(int i) {
        this.f5256b.zzau(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzav(boolean z) {
        this.f5256b.zzav(true);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzaw(cwg cwgVar) {
        this.f5256b.zzaw(cwgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzax(boolean z) {
        this.f5256b.zzax(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzay(boolean z) {
        this.f5256b.zzay(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzaz(String str, zzbjr zzbjrVar) {
        this.f5256b.zzaz(str, zzbjrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final void zzb(String str, String str2) {
        this.f5256b.zzb("window.inspectorInfo", str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbmm
    public final void zzd(String str, Map map) {
        this.f5256b.zzd(str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzdel
    public final void zzdG() {
        zzcfk zzcfkVar = this.f5256b;
        if (zzcfkVar != null) {
            zzcfkVar.zzdG();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdel
    public final void zzdf() {
        zzcfk zzcfkVar = this.f5256b;
        if (zzcfkVar != null) {
            zzcfkVar.zzdf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, g.fjn
    public final void zzdg() {
        this.f5256b.zzdg();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, g.fjn
    public final void zzdh() {
        this.f5256b.zzdh();
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final String zzdi() {
        return this.f5256b.zzdi();
    }

    @Override // com.google.android.gms.internal.ads.zzaym
    public final void zzdp(zzayl zzaylVar) {
        this.f5256b.zzdp(zzaylVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbmm
    public final void zze(String str, JSONObject jSONObject) {
        this.f5256b.zze(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final int zzf() {
        return this.f5256b.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final int zzg() {
        return ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdV)).booleanValue() ? this.f5256b.getMeasuredHeight() : getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final int zzh() {
        return ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdV)).booleanValue() ? this.f5256b.getMeasuredWidth() : getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzcgr, com.google.android.gms.internal.ads.zzccf
    public final Activity zzi() {
        return this.f5256b.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzccf
    public final gfo zzj() {
        return this.f5256b.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final zzbcz zzk() {
        return this.f5256b.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final void zzl(String str, JSONObject jSONObject) {
        ((v) this.f5256b).zzb(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzccf
    public final zzbda zzm() {
        return this.f5256b.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzcgy, com.google.android.gms.internal.ads.zzccf
    public final akx zzn() {
        return this.f5256b.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final zzcbu zzo() {
        return this.f5257c;
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final zzcdr zzp(String str) {
        return this.f5256b.zzp(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzccf
    public final zzcgm zzq() {
        return this.f5256b.zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final String zzr() {
        return this.f5256b.zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzccf
    public final void zzt(String str, zzcdr zzcdrVar) {
        this.f5256b.zzt(str, zzcdrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzu() {
        this.f5256b.zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzv(boolean z, long j) {
        this.f5256b.zzv(z, j);
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzw() {
        this.f5256b.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzx(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzy(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzz(boolean z) {
        this.f5256b.zzz(false);
    }
}
