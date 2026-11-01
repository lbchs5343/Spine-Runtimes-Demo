package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import g.akx;
import g.aqj;
import g.cwg;
import g.dcy;
import g.evo;
import g.fjn;
import g.gfo;
import java.util.List;

/* loaded from: classes3.dex */
public interface zzcfk extends evo, zzdel, zzcfb, zzbmm, zzcgn, zzcgr, zzbmy, zzaym, zzcgu, fjn, zzcgx, zzcgy, zzccf, zzcgz {
    boolean canGoBack();

    void destroy();

    @Override // com.google.android.gms.internal.ads.zzcgr, com.google.android.gms.internal.ads.zzccf
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    int getMeasuredHeight();

    int getMeasuredWidth();

    ViewParent getParent();

    int getWidth();

    void goBack();

    boolean isAttachedToWindow();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void measure(int i, int i2);

    @Override // g.evo
    /* synthetic */ void onAdClicked();

    void onPause();

    void onResume();

    @Override // com.google.android.gms.internal.ads.zzccf
    void setBackgroundColor(int i);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    void zzC(zzcgm zzcgmVar);

    zzfet zzD();

    Context zzE();

    View zzF();

    WebView zzG();

    WebViewClient zzH();

    zzavc zzI();

    zzazz zzJ();

    zzbfm zzK();

    cwg zzL();

    cwg zzM();

    zzchc zzN();

    zzche zzO();

    zzeeu zzP();

    zzeew zzQ();

    zzfew zzR();

    zzffs zzS();

    dcy zzT();

    String zzU();

    List zzV();

    void zzW(zzfet zzfetVar, zzfew zzfewVar);

    void zzX();

    void zzY();

    void zzZ(int i);

    void zzaA(String str, aqj aqjVar);

    boolean zzaB();

    boolean zzaC();

    boolean zzaD(boolean z, int i);

    boolean zzaE();

    boolean zzaF();

    boolean zzaG();

    boolean zzaH();

    void zzaa();

    void zzab();

    void zzac(boolean z);

    void zzad();

    void zzae(String str, String str2, String str3);

    void zzaf();

    void zzag(String str, zzbjr zzbjrVar);

    void zzah();

    void zzai(cwg cwgVar);

    void zzaj(zzche zzcheVar);

    void zzak(zzazz zzazzVar);

    void zzal(boolean z);

    void zzam();

    void zzan(Context context);

    void zzao(boolean z);

    void zzap(zzbfk zzbfkVar);

    void zzaq(boolean z);

    void zzar(zzbfm zzbfmVar);

    void zzas(zzeeu zzeeuVar);

    void zzat(zzeew zzeewVar);

    void zzau(int i);

    void zzav(boolean z);

    void zzaw(cwg cwgVar);

    void zzax(boolean z);

    void zzay(boolean z);

    void zzaz(String str, zzbjr zzbjrVar);

    /* synthetic */ void zzdg();

    /* synthetic */ void zzdh();

    Activity zzi();

    gfo zzj();

    zzbda zzm();

    akx zzn();

    zzcgm zzq();

    void zzt(String str, zzcdr zzcdrVar);
}
