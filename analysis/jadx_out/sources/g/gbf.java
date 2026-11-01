package g;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.zzavc;
import com.google.android.gms.internal.ads.zzbai;
import com.google.android.gms.internal.ads.zzbdi;
import com.google.android.gms.internal.ads.zzbdz;
import com.google.android.gms.internal.ads.zzbtp;
import com.google.android.gms.internal.ads.zzbts;
import com.google.android.gms.internal.ads.zzbwp;
import com.google.android.gms.internal.ads.zzcaj;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public final class gbf extends afk {

    /* renamed from: a, reason: collision with root package name */
    public zzavc f17853a;

    /* renamed from: b, reason: collision with root package name */
    public ejp f17854b;

    /* renamed from: c, reason: collision with root package name */
    public final dcy f17855c = zzcaj.zza.zzb(new gzm(7, this));

    /* renamed from: d, reason: collision with root package name */
    public final Context f17856d;

    /* renamed from: e, reason: collision with root package name */
    public final daw f17857e;

    /* renamed from: f, reason: collision with root package name */
    public final akx f17858f;

    /* renamed from: g, reason: collision with root package name */
    public AsyncTask f17859g;
    public final eno h;
    public WebView i;

    public gbf(Context context, eno enoVar, String str, akx akxVar) {
        this.f17856d = context;
        this.f17858f = akxVar;
        this.h = enoVar;
        this.i = new WebView(context);
        this.f17857e = new daw(context, str);
        j(0);
        this.i.setVerticalScrollBarEnabled(false);
        this.i.getSettings().setJavaScriptEnabled(true);
        this.i.setWebViewClient(new doe(3, this));
        this.i.setOnTouchListener(new bcr(5, this));
    }

    public final void j(int i) {
        if (this.i == null) {
            return;
        }
        this.i.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
    }

    @Override // g.deq
    public final void zzA() {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final void zzB() {
        ckd.aj("resume must be called on the main UI thread.");
    }

    @Override // g.deq
    public final void zzC(dyo dyoVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final void zzD(ejp ejpVar) {
        this.f17854b = ejpVar;
    }

    @Override // g.deq
    public final void zzE(gb gbVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final void zzF(eno enoVar) {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // g.deq
    public final void zzG(fbj fbjVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final void zzH(zzbai zzbaiVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final void zzI(gby gbyVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final void zzJ(bzx bzxVar) {
    }

    @Override // g.deq
    public final void zzK(fsf fsfVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final void zzL(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final void zzM(zzbtp zzbtpVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final void zzN(boolean z) {
    }

    @Override // g.deq
    public final void zzO(zzbdi zzbdiVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final void zzP(gwt gwtVar) {
    }

    @Override // g.deq
    public final void zzQ(zzbts zzbtsVar, String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final void zzR(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final void zzS(zzbwp zzbwpVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final void zzT(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final void zzU(cpm cpmVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final void zzW(bjq bjqVar) {
    }

    @Override // g.deq
    public final void zzX() {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final boolean zzY() {
        return false;
    }

    @Override // g.deq
    public final boolean zzZ() {
        return false;
    }

    @Override // g.deq
    public final boolean zzaa() {
        return false;
    }

    @Override // g.deq
    public final boolean zzab(aeh aehVar) {
        ckd.w(this.i, "This Search Ad has already been torn down");
        daw dawVar = this.f17857e;
        TreeMap treeMap = (TreeMap) dawVar.f13882a;
        dawVar.f13883b = aehVar.zzj.zza;
        Bundle bundle = aehVar.zzm;
        Bundle bundle2 = bundle != null ? bundle.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle2 != null) {
            String str = (String) zzbdz.zzc.zze();
            for (String str2 : bundle2.keySet()) {
                if (str.equals(str2)) {
                    dawVar.f13885d = bundle2.getString(str2);
                } else if (str2.startsWith("csa_")) {
                    treeMap.put(str2.substring(4), bundle2.getString(str2));
                }
            }
            treeMap.put("SDKVersion", this.f17858f.afmaVersion);
            if (((Boolean) zzbdz.zza.zze()).booleanValue()) {
                Bundle ae = afo.ae((Context) dawVar.f13886e, (String) zzbdz.zzb.zze());
                for (String str3 : ae.keySet()) {
                    treeMap.put(str3, ae.get(str3).toString());
                }
            }
        }
        this.f17859g = new frb(this).execute(new Void[0]);
        return true;
    }

    @Override // g.deq
    public final void zzac(atu atuVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final Bundle zzd() {
        throw new IllegalStateException("Unused method");
    }

    @Override // g.deq
    public final eno zzg() {
        return this.h;
    }

    @Override // g.deq
    public final ejp zzi() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    @Override // g.deq
    public final fbj zzj() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // g.deq
    public final gcq zzk() {
        return null;
    }

    @Override // g.deq
    public final cbz zzl() {
        return null;
    }

    @Override // g.deq
    public final bjq zzn() {
        ckd.aj("getAdFrame must be called on the main UI thread.");
        return new bpp(this.i);
    }

    public final String zzq() {
        String str = (String) this.f17857e.f13885d;
        if (true == TextUtils.isEmpty(str)) {
            str = "www.google.com";
        }
        return tn.ad("https://", str, (String) zzbdz.zzd.zze());
    }

    @Override // g.deq
    public final String zzr() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // g.deq
    public final String zzs() {
        return null;
    }

    @Override // g.deq
    public final String zzt() {
        return null;
    }

    @Override // g.deq
    public final void zzx() {
        ckd.aj("destroy must be called on the main UI thread.");
        this.f17859g.cancel(true);
        this.f17855c.cancel(false);
        this.i.destroy();
        this.i = null;
    }

    @Override // g.deq
    public final void zzy(aeh aehVar, gpa gpaVar) {
    }

    @Override // g.deq
    public final void zzz() {
        ckd.aj("pause must be called on the main UI thread.");
    }
}
