package g;

import android.app.ActivityManager;
import android.content.ClipData;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Base64;
import android.util.JsonWriter;
import android.view.ContentInfo;
import android.view.MenuItem;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import com.android.billingclient.api.ProxyBillingActivityV2;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzbkx;
import com.google.android.gms.internal.ads.zzbky;
import com.google.android.gms.internal.ads.zzbvm;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzcrq;
import com.google.android.gms.internal.ads.zzdpn;
import com.google.android.gms.internal.ads.zzend;
import com.google.android.gms.internal.ads.zzenh;
import com.google.android.gms.internal.ads.zzgee;
import com.ss.android.download.api.constant.BaseConstants;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class fnq implements ebz, egz, byf, bmm, adi, bcz, btp, hdb, fsz, fsj, asz, zzgee, nc, bez, fjn, zzenh, fbf {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f17098e;

    /* renamed from: f, reason: collision with root package name */
    public Object f17099f;

    public fnq() {
        Handler handler;
        Handler handler2;
        this.f17098e = 8;
        Looper mainLooper = Looper.getMainLooper();
        if (Build.VERSION.SDK_INT >= 28) {
            handler2 = eyo.n(mainLooper);
        } else {
            try {
                handler = (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(mainLooper, null, Boolean.TRUE);
            } catch (IllegalAccessException | InstantiationException | NoSuchMethodException unused) {
                handler = new Handler(mainLooper);
            } catch (InvocationTargetException e2) {
                Throwable cause = e2.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                if (!(cause instanceof Error)) {
                    throw new RuntimeException(cause);
                }
                throw ((Error) cause);
            }
            handler2 = handler;
        }
        this.f17099f = handler2;
    }

    public /* synthetic */ fnq(int i) {
        this.f17098e = i;
    }

    public /* synthetic */ fnq(int i, Object obj) {
        this.f17098e = i;
        this.f17099f = obj;
    }

    public fnq(Context context) {
        this.f17098e = 12;
        StringBuilder sb = dxc.f14999a;
        ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
        this.f17099f = new cjm((int) ((((context.getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass()) * BaseConstants.MB_VALUE) / 7));
    }

    public fnq(Context context, Uri uri) {
        this.f17098e = 9;
        this.f17099f = context.getContentResolver().acquireUnstableContentProviderClient(uri);
    }

    public fnq(Context context, zzbky zzbkyVar) {
        this.f17098e = 10;
        this.f17099f = new zzbkx(context, zzbkyVar);
    }

    public fnq(ContentInfo contentInfo) {
        this.f17098e = 7;
        contentInfo.getClass();
        this.f17099f = dgd.d(contentInfo);
    }

    public static ve h(hed hedVar) {
        fpr fprVar = (fpr) hedVar.l.k(acq.h);
        ebp ebpVar = null;
        if (fprVar != null) {
            HashSet hashSet = fprVar.f17208a;
            String str = evh.f16225a;
            ebpVar = (ebp) (hashSet.size() == 1 ? hashSet.iterator().next() : null);
        }
        if (ebpVar != null) {
            return ebpVar.j().f11076d;
        }
        bbo bboVar = (bbo) hedVar.l.k(acq.aj);
        return bboVar != null ? h(bboVar.f11231a) : hedVar.al.f11076d;
    }

    public static String j(String str, cgh cghVar, boolean z) {
        String str2;
        StringBuilder sb = new StringBuilder("lottie_cache_");
        sb.append(str.replaceAll("\\W+", ""));
        if (z) {
            str2 = ".temp" + cghVar.ox;
        } else {
            str2 = cghVar.ox;
        }
        sb.append(str2);
        return sb.toString();
    }

    @Override // g.hdb
    public boolean _bz(Context context, ert ertVar) {
        dqe g2 = dqe.g();
        if (g2 != null) {
            g2.p((fjv) this.f17099f, false, true, cyz.f13786c);
            return true;
        }
        erl.ai("UpdateManager is empty", new NullPointerException());
        return true;
    }

    @Override // g.egz
    public void _cj(ftn ftnVar) {
        switch (this.f17098e) {
            case 2:
                egz egzVar = ((ActionMenuView) this.f17099f).f84f;
                if (egzVar != null) {
                    egzVar._cj(ftnVar);
                    break;
                }
                break;
            default:
                Toolbar toolbar = (Toolbar) this.f17099f;
                esf esfVar = toolbar.f115ab.f82b;
                if (esfVar == null || !esfVar.af()) {
                    Iterator it = toolbar.at.f16566b.iterator();
                    while (it.hasNext()) {
                        ((bjn) ((arz) it.next())).f11707a.bs(ftnVar);
                    }
                }
                dcq dcqVar = toolbar.n;
                if (dcqVar != null) {
                    dcqVar._cj(ftnVar);
                    break;
                }
                break;
        }
    }

    @Override // g.adi
    public int _cr() {
        int flags;
        flags = ((ContentInfo) this.f17099f).getFlags();
        return flags;
    }

    @Override // g.asz
    public void accept(Object obj, Object obj2) {
        eeo eeoVar = (eeo) obj2;
        drm drmVar = (drm) ((aka) obj).getService();
        axe axeVar = (axe) this.f17099f;
        drmVar.getClass();
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(drmVar.f19749c);
        int i = gui.f18774a;
        if (axeVar == null) {
            obtain.writeInt(0);
        } else {
            obtain.writeInt(1);
            axeVar.writeToParcel(obtain, 0);
        }
        try {
            drmVar._cb.transact(1, obtain, null, 1);
            obtain.recycle();
            eeoVar.f15402a.m(null);
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    @Override // g.bmm
    public void ad(czh czhVar, anx anxVar) {
        switch (this.f17098e) {
            case 6:
                ((aux) this.f17099f).complete(anxVar);
                break;
            default:
                gsn gsnVar = (gsn) this.f17099f;
                if (!anxVar.f10539a.p()) {
                    gsnVar._z(eg.i(new hbk(anxVar)));
                    break;
                } else {
                    Object obj = anxVar.f10540b;
                    if (obj != null) {
                        gsnVar._z(obj);
                        break;
                    } else {
                        daw b2 = czhVar.b();
                        b2.getClass();
                        Object cast = dau.class.cast(((Map) b2.f13885d).get(dau.class));
                        bff.d(cast);
                        dau dauVar = (dau) cast;
                        gsnVar._z(eg.i(new nj("Response from " + dauVar.f13876b.getName() + '.' + dauVar.f13878d.getName() + " was null but response body type was declared as non-null")));
                        break;
                    }
                }
        }
    }

    @Override // g.fbf
    public void b(JsonWriter jsonWriter) {
        Object obj = dzz.f15159c;
        jsonWriter.name("params").beginObject();
        byte[] bArr = (byte[]) this.f17099f;
        int length = bArr.length;
        String encodeToString = Base64.encodeToString(bArr, 0);
        if (length < 10000) {
            jsonWriter.name("body").value(encodeToString);
        } else {
            String m = mx.m(encodeToString, "MD5");
            if (m != null) {
                jsonWriter.name("bodydigest").value(m);
            }
        }
        jsonWriter.name("bodylength").value(length);
        jsonWriter.endObject();
    }

    @Override // g.adi
    public ClipData c() {
        ClipData clip;
        clip = ((ContentInfo) this.f17099f).getClip();
        return clip;
    }

    @Override // g.bcz
    public void close() {
        ContentProviderClient contentProviderClient = (ContentProviderClient) this.f17099f;
        if (contentProviderClient != null) {
            contentProviderClient.release();
        }
    }

    @Override // g.adi
    public ContentInfo d() {
        return (ContentInfo) this.f17099f;
    }

    @Override // g.fsj
    public Bitmap dq(hcl hclVar) {
        String str;
        akg akgVar = (akg) this.f17099f;
        String str2 = hclVar.f19223d;
        String str3 = hclVar.f19222c;
        String str4 = hclVar.f19225f;
        if (!TextUtils.isEmpty(str4) && str4.startsWith("${") && "image:".equals(str2)) {
            str = dzm.ae(str4, akgVar.mn);
        } else if (!TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            str = dzm.ae(str2, akgVar.mn);
        } else if (!TextUtils.isEmpty(str3) && TextUtils.isEmpty(str2)) {
            str = dzm.ae(str3, akgVar.mn);
        } else if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str2)) {
            str = null;
        } else {
            str = dzm.ae(str2, akgVar.mn) + dzm.ae(str3, akgVar.mn);
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Bitmap bitmap = (Bitmap) akgVar.f17753ab.get(str);
        if (bitmap != null) {
            return bitmap;
        }
        ((com.bytedance.sdk.openadsdk.core.ugeno.p) fzn.j().f17730e).dq(akgVar.ig, str, new fpd(this, hclVar, str, 15));
        return (Bitmap) akgVar.f17753ab.get(str);
    }

    @Override // g.ebz
    public void dq(Bitmap bitmap) {
        Context context;
        float f2;
        int i;
        float f3;
        switch (this.f17098e) {
            case 1:
                if (bitmap != null) {
                    dlv dlvVar = (dlv) this.f17099f;
                    if (!dlvVar.l) {
                        dxo.d(new ggx(this, bitmap, 1));
                        break;
                    } else {
                        Bitmap c2 = dxo.c(dlvVar.s, bitmap, (int) dlvVar.ob);
                        if (c2 != null) {
                            dxo.d(new ggx(this, c2, 0));
                            break;
                        }
                    }
                }
                break;
            default:
                fde fdeVar = (fde) this.f17099f;
                if (bitmap != null) {
                    context = fdeVar.s;
                    f2 = fdeVar.tv;
                    if (f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        f3 = fdeVar.tv;
                        i = (int) f3;
                    } else {
                        i = 10;
                    }
                    dxo.d(new efr(this, 3, dxo.c(context, bitmap, i)));
                    break;
                }
                break;
        }
    }

    @Override // g.fsz
    public boolean g(int i) {
        c.a.a aVar = (c.a.a) this.f17099f;
        cng f2 = aVar.f375e.f(i);
        if (f2 == null) {
            return false;
        }
        if (f2 instanceof vc) {
            fso.ae(aVar.bc, "", ((vc) f2).f20142b, true);
            return true;
        }
        if (!(f2 instanceof gzr)) {
            return false;
        }
        fso.ae(aVar.bc, "", ((gzr) f2).f19066c, true);
        return true;
    }

    @Override // g.adi
    public int getSource() {
        int source;
        source = ((ContentInfo) this.f17099f).getSource();
        return source;
    }

    @Override // g.btp
    public void i(x xVar) {
        dmr.k((dmr) this.f17099f, false);
    }

    public File k(String str, InputStream inputStream, cgh cghVar) {
        File file = new File(n(), j(str, cghVar, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        return file;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        } finally {
            inputStream.close();
        }
    }

    public boolean l(cwx cwxVar, ayu ayuVar, ArrayList arrayList) {
        dwg dwgVar = (dwg) this.f17099f;
        if (cwxVar != null && cwxVar.m()) {
            boolean z = ayuVar.o() || ayuVar.m();
            cci w = dwgVar.w(cwxVar);
            if (w != null) {
                w.av();
                for (hed hedVar : w.aj) {
                    if (ayuVar.q(hedVar.al)) {
                        arrayList.add(hedVar);
                    }
                }
                if (!z) {
                    l(w.af, ayuVar, arrayList);
                    Iterator it = w.j.iterator();
                    while (it.hasNext()) {
                        l((cwx) it.next(), ayuVar, arrayList);
                    }
                }
            } else {
                aht l = dwgVar.l.l(cwxVar);
                if (l != null) {
                    for (fhm fhmVar : l.f10236a.values()) {
                        if (ayuVar.q(fhmVar.m)) {
                            arrayList.add(fhmVar);
                        }
                    }
                    if (!z) {
                        for (cwx cwxVar2 : l.f10240e) {
                            l(cwxVar2, ayuVar, arrayList);
                        }
                    }
                }
            }
        }
        return false;
    }

    public ebp m(ayu ayuVar) {
        fhm fhmVar;
        dwg dwgVar = (dwg) this.f17099f;
        hed x = dwgVar.x(ayuVar);
        if (x != null) {
            return x;
        }
        cut cutVar = dwgVar.l;
        HashMap hashMap = cutVar.f13559e;
        ve veVar = ayuVar.f11076d;
        String str = ayuVar.f11077e;
        aht ahtVar = (aht) hashMap.get(veVar.f20149d.l());
        if (ahtVar == null) {
            return null;
        }
        fhm fhmVar2 = (fhm) ahtVar.f10236a.get(str);
        if (fhmVar2 != null) {
            return fhmVar2;
        }
        for (cwx cwxVar : ahtVar.f10240e) {
            aht ahtVar2 = (aht) cutVar.f13559e.get(cwxVar.l());
            if (ahtVar2 == null) {
                cutVar.f13557c.add(cwxVar.l());
            }
            if (ahtVar2 != null && (fhmVar = (fhm) ahtVar2.f10236a.get(str)) != null) {
                return fhmVar;
            }
        }
        return new ei(ayuVar);
    }

    public File n() {
        ccb ccbVar = (ccb) this.f17099f;
        ccbVar.getClass();
        File file = new File(com.bytedance.sdk.openadsdk.api.plugin.d.d(ccbVar.f12624a), "lottie_network_cache");
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    @Override // g.btp
    public void o(int i) {
        dmr.j((dmr) this.f17099f, false, i);
    }

    @Override // g.egz
    public boolean p(ftn ftnVar, MenuItem menuItem) {
        boolean onMenuItemSelected;
        switch (this.f17098e) {
            case 2:
                cwb cwbVar = ((ActionMenuView) this.f17099f).m;
                if (cwbVar != null) {
                    Toolbar toolbar = (Toolbar) ((emr) cwbVar).n;
                    if (toolbar.at.d(menuItem)) {
                        onMenuItemSelected = true;
                    } else {
                        hax haxVar = toolbar.ac;
                        onMenuItemSelected = haxVar != null ? ((bbp) ((aoy) haxVar).h).f11237f.onMenuItemSelected(0, menuItem) : false;
                    }
                    if (onMenuItemSelected) {
                    }
                }
                break;
        }
        return false;
    }

    public ebp r(gif gifVar) {
        ebp ebpVar = (ebp) gifVar.l.k(acq.j);
        return ebpVar != null ? ebpVar : m(gifVar.ac());
    }

    @Override // g.fsz
    public void s(androidx.recyclerview.widget.p pVar, int i) {
        if (pVar instanceof aam) {
            TextView textView = ((aam) pVar).am;
            if (textView.getVisibility() == 0) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
            }
        }
    }

    @Override // g.bcz
    public Cursor t(Uri uri, String[] strArr, String[] strArr2) {
        ContentProviderClient contentProviderClient = (ContentProviderClient) this.f17099f;
        if (contentProviderClient == null) {
            return null;
        }
        try {
            return contentProviderClient.query(uri, strArr, "query = ?", strArr2, null, null);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public String toString() {
        switch (this.f17098e) {
            case 7:
                return "ContentInfoCompat{" + ((ContentInfo) this.f17099f) + "}";
            default:
                return super.toString();
        }
    }

    @Override // g.bez
    public void v(Object obj) {
        ProxyBillingActivityV2 proxyBillingActivityV2 = (ProxyBillingActivityV2) this.f17099f;
        etm etmVar = (etm) obj;
        proxyBillingActivityV2.getClass();
        Intent data = etmVar.getData();
        int i = gbs.d(data, "ProxyBillingActivityV2").f15636a;
        ResultReceiver resultReceiver = proxyBillingActivityV2.f406e;
        if (resultReceiver != null) {
            resultReceiver.send(i, data == null ? null : data.getExtras());
        }
        if (etmVar.getResultCode() != -1 || i != 0) {
            etmVar.getResultCode();
        }
        proxyBillingActivityV2.finish();
    }

    @Override // g.bmm
    public void w(czh czhVar, Throwable th) {
        switch (this.f17098e) {
            case 6:
                ((aux) this.f17099f).completeExceptionally(th);
                break;
            default:
                ((gsn) this.f17099f)._z(eg.i(th));
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzenh
    public void zza() {
        synchronized (((zzend) this.f17099f)) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        switch (this.f17098e) {
            case 23:
                ti.f20033a.f20034ab.zzw(th, "DefaultGmsgHandlers.attributionReportingManager");
                break;
            default:
                try {
                    ((zzbvm) this.f17099f).zze(gvi.zzb(th));
                    break;
                } catch (RemoteException unused) {
                    agd.h();
                    return;
                }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zzb(Object obj) {
        switch (this.f17098e) {
            case 23:
                zzcfk zzcfkVar = (zzcfk) this.f17099f;
                new bfn(zzcfkVar.getContext(), zzcfkVar.zzn().afmaVersion, (String) obj).zzb();
                return;
            case 27:
                try {
                    ((zzbvm) this.f17099f).zzf((ParcelFileDescriptor) obj);
                    return;
                } catch (RemoteException unused) {
                    agd.h();
                    return;
                }
            default:
                zzcrq zzcrqVar = (zzcrq) obj;
                synchronized (((zzend) this.f17099f)) {
                    ((zzend) this.f17099f).f7281c = zzcrqVar.zzm();
                    zzcrqVar.zzk();
                }
                return;
        }
    }

    @Override // g.fjn
    public void zzdg() {
        ((zzdpn) this.f17099f).i.zzb();
    }

    @Override // g.fjn
    public void zzdh() {
        ((zzdpn) this.f17099f).i.zzc();
    }
}
