package g;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import androidx.work.impl.WorkDatabase_Impl;
import cn.trinea.android.developertools.R;
import com.bytedance.android.live.base.api.push.ILivePush;
import com.bytedance.pangle.ZeusPluginEventCallback;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzaoy;
import com.google.android.gms.internal.ads.zzapb;
import com.google.android.gms.internal.ads.zzapg;
import com.google.android.gms.internal.ads.zzapp;
import com.google.android.gms.internal.ads.zzapv;
import com.google.android.gms.internal.ads.zzaqb;
import com.google.android.gms.internal.ads.zzato;
import com.google.android.gms.internal.ads.zzatp;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbeg;
import com.google.android.gms.internal.ads.zzbrf;
import com.google.android.gms.internal.ads.zzcfs;
import com.google.android.gms.internal.ads.zzcpd;
import com.google.android.gms.internal.ads.zzcqh;
import com.google.android.gms.internal.ads.zzcwz;
import com.google.android.gms.internal.ads.zzcxe;
import com.google.android.gms.internal.ads.zzdgu;
import com.google.android.gms.internal.ads.zzdgv;
import com.google.android.gms.internal.ads.zzdto;
import com.google.android.gms.internal.ads.zzdts;
import com.google.android.gms.internal.ads.zzdty;
import com.google.android.gms.internal.ads.zzdtz;
import com.google.android.gms.internal.ads.zzduc;
import com.google.android.gms.internal.ads.zzdud;
import com.google.android.gms.internal.ads.zzfbf;
import com.google.android.gms.internal.ads.zzfet;
import com.google.android.gms.internal.ads.zzfgl;
import com.google.android.gms.internal.ads.zzfka;
import com.google.android.gms.internal.ads.zzfkl;
import com.google.android.gms.internal.ads.zzfko;
import com.google.android.gms.internal.ads.zzfpp;
import com.google.android.gms.internal.ads.zzfps;
import com.google.android.gms.internal.ads.zzfrm;
import com.google.android.gms.internal.ads.zzfro;
import com.google.android.gms.internal.ads.zzgee;
import com.google.android.gms.internal.ads.zzgxp;
import com.google.android.gms.internal.ads.zzrk;
import com.google.android.gms.internal.ads.zzrl;
import com.google.android.gms.internal.ads.zztz;
import com.google.android.gms.internal.ads.zzui;
import com.google.android.gms.internal.ads.zzun;
import com.google.android.gms.internal.ads.zzur;
import com.google.android.gms.internal.ads.zzva;
import com.google.android.gms.internal.ads.zzvb;
import j$.util.Objects;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class gkr implements btp, dbn, ccc, zzgee, zzdto, zzdgv, zzfps, zzvb, zzrl {

    /* renamed from: a, reason: collision with root package name */
    public Object f18321a;

    /* renamed from: b, reason: collision with root package name */
    public Object f18322b;

    /* renamed from: c, reason: collision with root package name */
    public Object f18323c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f18324d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f18325e;

    public gkr(Context context, ActionMode.Callback callback) {
        this.f18324d = 4;
        this.f18321a = context;
        this.f18325e = callback;
        this.f18322b = new ArrayList();
        this.f18323c = new bcp(0);
    }

    public gkr(Context context, View view) {
        this.f18324d = 3;
        this.f18321a = view;
        ftn ftnVar = new ftn(context);
        this.f18325e = ftnVar;
        ftnVar.h = new fc(15, this);
        byn bynVar = new byn(context, ftnVar, view, false, R.attr.popupMenuStyle, 0);
        this.f18322b = bynVar;
        bynVar.f12457f = 0;
        bynVar.i = new awq(1, this);
    }

    public gkr(WorkDatabase_Impl workDatabase_Impl) {
        this.f18324d = 0;
        this.f18325e = workDatabase_Impl;
        this.f18321a = new sw(workDatabase_Impl, 4);
        this.f18322b = new bnh(workDatabase_Impl, 2);
        this.f18323c = new bnh(workDatabase_Impl, 3);
    }

    public gkr(zzapb zzapbVar, BlockingQueue blockingQueue, zzapg zzapgVar) {
        this.f18324d = 6;
        this.f18325e = new HashMap();
        this.f18323c = zzapgVar;
        this.f18321a = zzapbVar;
        this.f18322b = blockingQueue;
    }

    public gkr(zzfet zzfetVar, zzbrf zzbrfVar, bme bmeVar) {
        this.f18324d = 9;
        this.f18323c = null;
        this.f18325e = zzfetVar;
        this.f18321a = zzbrfVar;
        this.f18322b = bmeVar;
    }

    public gkr(zztz zztzVar, Object obj) {
        this.f18324d = 12;
        this.f18323c = zztzVar;
        this.f18321a = zztzVar.f8888f.zza(0, null);
        this.f18322b = zztzVar.f8883a.zza(0, null);
        this.f18325e = obj;
    }

    public /* synthetic */ gkr(bxr bxrVar, gud gudVar, Long l, String str) {
        this.f18324d = 8;
        this.f18322b = bxrVar;
        this.f18323c = gudVar;
        this.f18325e = l;
        this.f18321a = str;
    }

    public /* synthetic */ gkr(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.f18324d = i;
        this.f18325e = obj;
        this.f18321a = obj2;
        this.f18322b = obj3;
        this.f18323c = obj4;
    }

    public /* synthetic */ gkr(Object obj, Object obj2, Object obj3, Object obj4, int i, boolean z) {
        this.f18324d = i;
        this.f18323c = obj;
        this.f18325e = obj2;
        this.f18321a = obj3;
        this.f18322b = obj4;
    }

    public gkr(ExecutorService executorService) {
        this.f18324d = 5;
        this.f18322b = new Handler(Looper.getMainLooper());
        this.f18323c = new bxc(1, this);
        aqv aqvVar = new aqv(executorService, 0);
        this.f18325e = aqvVar;
        this.f18321a = ffb.cc(aqvVar);
    }

    public static String f(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        zzato zza = zzatp.zza();
        zza.zzc(5);
        zza.zza(zzgxp.zzv(bArr, 0, bArr.length));
        return Base64.encodeToString(((zzatp) zza.zzbr()).zzaV(), 11);
    }

    public void aa(String str) {
        WorkDatabase_Impl workDatabase_Impl = (WorkDatabase_Impl) this.f18325e;
        workDatabase_Impl.al();
        bnh bnhVar = (bnh) this.f18322b;
        cap i = bnhVar.i();
        i.e(1, str);
        try {
            workDatabase_Impl.an();
            try {
                i.h();
                workDatabase_Impl.ah();
            } finally {
                workDatabase_Impl.am();
            }
        } finally {
            bnhVar.h(i);
        }
    }

    public dpb ab(int i) {
        ecx ecxVar;
        k(i);
        gqc gqcVar = (gqc) this.f18322b;
        int ap = gqcVar.ap();
        int ai = gqcVar.ai();
        switch (ap) {
            case 1:
                ecxVar = ecx.STATIC_PUT;
                break;
            case 2:
                ecxVar = ecx.STATIC_GET;
                break;
            case 3:
                ecxVar = ecx.INSTANCE_PUT;
                break;
            case 4:
                ecxVar = ecx.INSTANCE_GET;
                break;
            case 5:
                ecxVar = ecx.INVOKE_INSTANCE;
                break;
            case 6:
                ecxVar = ecx.INVOKE_STATIC;
                break;
            case 7:
                ecxVar = ecx.INVOKE_DIRECT;
                break;
            case 8:
                ecxVar = ecx.INVOKE_CONSTRUCTOR;
                break;
            case 9:
                ecxVar = ecx.INVOKE_INTERFACE;
                break;
            default:
                throw new IllegalArgumentException(awf.ac(ap, "Unknown method handle type: "));
        }
        return ecxVar.b() ? new dpb(ecxVar, z(ai), 0) : new dpb(ecxVar, j(ai), 1);
    }

    public String ac() {
        int i;
        byte b2;
        int i2;
        gqc gqcVar = (gqc) this.f18322b;
        int ai = gqcVar.ai();
        int i3 = gqcVar.f18566ab;
        int i4 = ai + i3;
        gqcVar.f18566ab = i4;
        byte[] copyOfRange = Arrays.copyOfRange((byte[]) gqcVar.z, i3, i4);
        int length = copyOfRange.length;
        for (byte b3 : copyOfRange) {
            if ((b3 & 128) != 0) {
                StringBuilder sb = new StringBuilder();
                int i5 = 0;
                while (i5 < length) {
                    byte b4 = copyOfRange[i5];
                    int i6 = b4 & 255;
                    if ((b4 & 128) == 0) {
                        sb.append((char) i6);
                    } else {
                        int i7 = i5 + 1;
                        if (i7 >= length) {
                            throw new cyf("Inconsistent byte array structure: too short");
                        }
                        byte b5 = copyOfRange[i7];
                        int i8 = b5 & 255;
                        if (i6 == 192 && i8 == 128) {
                            sb.appendCodePoint(0);
                        } else if ((b4 & 224) == 192 && (b5 & 192) == 128) {
                            sb.appendCodePoint(((b4 & 31) << 6) + (b5 & 63));
                        } else {
                            i7 = i5 + 2;
                            if (i7 < length) {
                                byte b6 = copyOfRange[i7];
                                if ((b4 & 240) == 224 && (b5 & 192) == 128 && (b6 & 192) == 128) {
                                    sb.appendCodePoint(((b4 & 15) << 12) + ((b5 & 63) << 6) + (b6 & 63));
                                } else {
                                    int i9 = i5 + 5;
                                    if (i9 >= length || i6 != 237 || (b5 & 240) != 160 || (i = copyOfRange[i5 + 3] & 255) != 237 || (i2 = (b2 = copyOfRange[i5 + 4]) & 240) != 160) {
                                        throw new cyf("Inconsistent byte array structure: unexpected char");
                                    }
                                    byte b7 = copyOfRange[i9];
                                    if (i != 237 || i2 != 160) {
                                        throw new cyf("Inconsistent byte array structure: invalid 6 bytes char");
                                    }
                                    sb.appendCodePoint(((b5 & 15) << 16) + 65536 + ((b6 & 63) << 10) + ((b2 & 15) << 6) + (b7 & 63));
                                    i5 = i9;
                                }
                            } else {
                                continue;
                            }
                        }
                        i5 = i7;
                    }
                    i5++;
                }
                return sb.toString();
            }
        }
        return new String(copyOfRange, StandardCharsets.US_ASCII);
    }

    public void ad(zzapp zzappVar, zzapv zzapvVar) {
        List list;
        zzaoy zzaoyVar = zzapvVar.zzb;
        if (zzaoyVar == null || zzaoyVar.zze < System.currentTimeMillis()) {
            ag(zzappVar);
            return;
        }
        String zzj = zzappVar.zzj();
        synchronized (this) {
            list = (List) ((HashMap) this.f18325e).remove(zzj);
        }
        if (list != null) {
            if (zzaqb.zzb) {
                zzaqb.zzd("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(list.size()), zzj);
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((zzapg) this.f18323c).zzb((zzapp) it.next(), zzapvVar, null);
            }
        }
    }

    public synchronized void ae() {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            this.f18325e.getClass().getDeclaredMethod(ILivePush.ClickType.CLOSE, null).invoke(this.f18325e, null);
            ((zzfpp) this.f18323c).zzd(3001, System.currentTimeMillis() - currentTimeMillis);
        } catch (Exception e2) {
            throw new zzfrm(2003, e2);
        }
    }

    public dcz af(gtg gtgVar) {
        ArrayList arrayList = (ArrayList) this.f18322b;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            dcz dczVar = (dcz) arrayList.get(i);
            if (dczVar != null && dczVar.f13993b == gtgVar) {
                return dczVar;
            }
        }
        dcz dczVar2 = new dcz((Context) this.f18321a, gtgVar);
        arrayList.add(dczVar2);
        return dczVar2;
    }

    public synchronized void ag(zzapp zzappVar) {
        try {
            HashMap hashMap = (HashMap) this.f18325e;
            String zzj = zzappVar.zzj();
            List list = (List) hashMap.remove(zzj);
            if (list == null || list.isEmpty()) {
                return;
            }
            if (zzaqb.zzb) {
                zzaqb.zzd("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(list.size()), zzj);
            }
            zzapp zzappVar2 = (zzapp) list.remove(0);
            ((HashMap) this.f18325e).put(zzj, list);
            zzappVar2.s(this);
            try {
                ((BlockingQueue) this.f18322b).put(zzappVar2);
            } catch (InterruptedException e2) {
                zzaqb.zzb("Couldn't add request to queue. %s", e2.toString());
                Thread.currentThread().interrupt();
                ((zzapb) this.f18321a).zzb();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean g() {
        try {
        } catch (Exception e2) {
            throw new zzfrm(2001, e2);
        }
        return ((Boolean) this.f18325e.getClass().getDeclaredMethod("init", null).invoke(this.f18325e, null)).booleanValue();
    }

    public String h(int i) {
        k(i);
        String r = r(((gqc) this.f18322b).ai());
        char charAt = r.charAt(0);
        if (charAt == 'L' || charAt == 'T' ? r.endsWith(";") : charAt == '[') {
            return r;
        }
        return "L" + r + ';';
    }

    @Override // g.btp
    public void i(x xVar) {
        fpd fpdVar = (fpd) this.f18321a;
        efc efcVar = (efc) this.f18323c;
        if (((WeakReference) this.f18325e).get() == null) {
            return;
        }
        efcVar.f15424e = "a";
        efcVar.f15421b = fpdVar;
        ArrayList arrayList = new ArrayList();
        fdy fdyVar = new fdy(5, false);
        fdyVar.f16634c = xVar;
        if (xVar.j() != null) {
            xVar.j().getClass();
            String str = xVar.j().f15134b;
            if (str != null) {
                fdyVar.f16632a = str;
            }
        }
        if (((x) fdyVar.f16634c) == null) {
            throw new NullPointerException("ProductDetails is required for constructing ProductDetailsParams.");
        }
        arrayList.add(new aab(fdyVar));
        ArrayList arrayList2 = new ArrayList(arrayList);
        boolean isEmpty = arrayList2.isEmpty();
        if (isEmpty) {
            throw new IllegalArgumentException("Details of the products must be provided.");
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            if (((aab) it.next()) == null) {
                throw new IllegalArgumentException("ProductDetailsParams cannot be null.");
            }
        }
        dxb dxbVar = new dxb();
        boolean z = true;
        dxbVar.f14996b = (isEmpty || ((aab) arrayList2.get(0)).f9836a.f20265g.optString(TTDownloadField.TT_PACKAGE_NAME).isEmpty()) ? false : true;
        if (TextUtils.isEmpty(null) && TextUtils.isEmpty(null)) {
            z = false;
        }
        boolean isEmpty2 = TextUtils.isEmpty(null);
        if (z && !isEmpty2) {
            throw new IllegalArgumentException("Please provide Old SKU purchase information(token/id) or original external transaction id, not both.");
        }
        dxbVar.f14997c = new bmr(25);
        dxbVar.f14995a = new ArrayList();
        dxbVar.f14998d = fkz.n(arrayList2);
        ejd bf = efcVar.f15423d.bf((elf) this.f18322b, dxbVar);
        if (bf == null || bf.f15636a != 0) {
            fpdVar.o(bf == null ? ZeusPluginEventCallback.EVENT_START_LOAD : cdy.j(bf.f15636a));
        }
    }

    public efh j(int i) {
        k(i);
        gqc gqcVar = (gqc) this.f18322b;
        int ai = gqcVar.ai();
        k(gqcVar.ai());
        int ai2 = gqcVar.ai();
        int ai3 = gqcVar.ai();
        efh efhVar = new efh();
        efhVar.k((bpt) this.f18325e, i, true);
        efhVar.f15438g = h(ai);
        efhVar.h = r(ai2);
        efhVar.i = r(ai3);
        return efhVar;
    }

    public void k(int i) {
        ((gqc) this.f18322b).f18566ab = ((adr) this.f18323c).f10054b[i];
    }

    public boolean l(zzur zzurVar) {
        zzur zzurVar2;
        zztz zztzVar = (zztz) this.f18323c;
        Object obj = this.f18325e;
        if (zzurVar != null) {
            zzurVar2 = zztzVar.r(obj, zzurVar);
            if (zzurVar2 == null) {
                return false;
            }
        } else {
            zzurVar2 = null;
        }
        zztzVar.s(obj);
        zzva zzvaVar = (zzva) this.f18321a;
        int i = zzvaVar.zza;
        if (!Objects.equals(zzvaVar.zzb, zzurVar2)) {
            this.f18321a = zztzVar.f8888f.zza(0, zzurVar2);
        }
        zzrk zzrkVar = (zzrk) this.f18322b;
        int i2 = zzrkVar.zza;
        if (Objects.equals(zzrkVar.zzb, zzurVar2)) {
            return true;
        }
        this.f18322b = zztzVar.f8883a.zza(0, zzurVar2);
        return true;
    }

    @Override // g.dbn
    public boolean m(gtg gtgVar, Menu menu) {
        ActionMode.Callback callback = (ActionMode.Callback) this.f18325e;
        dcz af = af(gtgVar);
        bcp bcpVar = (bcp) this.f18323c;
        Menu menu2 = (Menu) bcpVar.get(menu);
        if (menu2 == null) {
            menu2 = new bvc((Context) this.f18321a, (ftn) menu);
            bcpVar.put(menu, menu2);
        }
        return callback.onPrepareActionMode(af, menu2);
    }

    public synchronized byte[] n(Map map) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
        } catch (Exception e2) {
            ((zzfpp) this.f18323c).zzc(2007, System.currentTimeMillis() - currentTimeMillis, e2);
            return null;
        }
        return (byte[]) this.f18325e.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(this.f18325e, null, map);
    }

    @Override // g.btp
    public void o(int i) {
        efc efcVar = (efc) this.f18323c;
        fpd fpdVar = (fpd) this.f18321a;
        efcVar.getClass();
        fpdVar.o(i);
    }

    @Override // g.dbn
    public boolean p(gtg gtgVar, Menu menu) {
        ActionMode.Callback callback = (ActionMode.Callback) this.f18325e;
        dcz af = af(gtgVar);
        bcp bcpVar = (bcp) this.f18323c;
        Menu menu2 = (Menu) bcpVar.get(menu);
        if (menu2 == null) {
            menu2 = new bvc((Context) this.f18321a, (ftn) menu);
            bcpVar.put(menu, menu2);
        }
        return callback.onCreateActionMode(af, menu2);
    }

    @Override // g.dbn
    public boolean q(gtg gtgVar, MenuItem menuItem) {
        return ((ActionMode.Callback) this.f18325e).onActionItemClicked(af(gtgVar), new hcv((Context) this.f18321a, (buc) menuItem));
    }

    public String r(int i) {
        if (i == 0) {
            return null;
        }
        k(i);
        return ac();
    }

    public void s(Runnable runnable) {
        ((aqv) this.f18325e).execute(runnable);
    }

    public synchronized boolean t(zzapp zzappVar) {
        try {
            HashMap hashMap = (HashMap) this.f18325e;
            String zzj = zzappVar.zzj();
            if (!hashMap.containsKey(zzj)) {
                ((HashMap) this.f18325e).put(zzj, null);
                zzappVar.s(this);
                if (zzaqb.zzb) {
                    zzaqb.zza("new request, sending to network %s", zzj);
                }
                return false;
            }
            List list = (List) ((HashMap) this.f18325e).get(zzj);
            if (list == null) {
                list = new ArrayList();
            }
            zzappVar.zzm("waiting-for-response");
            list.add(zzappVar);
            ((HashMap) this.f18325e).put(zzj, list);
            if (zzaqb.zzb) {
                zzaqb.zza("Request for cacheKey=%s is in flight, putting on hold.", zzj);
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // g.dbn
    public void u(gtg gtgVar) {
        ((ActionMode.Callback) this.f18325e).onDestroyActionMode(af(gtgVar));
    }

    public synchronized int v() {
        try {
        } catch (Exception e2) {
            throw new zzfrm(2006, e2);
        }
        return ((Integer) this.f18325e.getClass().getDeclaredMethod("lcs", null).invoke(this.f18325e, null)).intValue();
    }

    public zzun w(zzun zzunVar, zzur zzurVar) {
        zztz zztzVar = (zztz) this.f18323c;
        long j = zzunVar.zzc;
        Object obj = this.f18325e;
        zztzVar.o(j, obj);
        long j2 = zzunVar.zzd;
        zztzVar.o(j2, obj);
        return (j == zzunVar.zzc && j2 == zzunVar.zzd) ? zzunVar : new zzun(1, zzunVar.zza, zzunVar.zzb, 0, null, j, j2);
    }

    public ghr x(int i) {
        gqc gqcVar = (gqc) this.f18322b;
        fha y = y(i);
        switch (gls.f18369a[y.ordinal()]) {
            case 3:
                return new ghr(dnd.ENCODED_STRING, ac());
            case 4:
                return new ghr(dnd.ENCODED_STRING, r(gqcVar.ai()));
            case 5:
                return new ghr(dnd.ENCODED_INT, Integer.valueOf(gqcVar.af()));
            case 6:
                return new ghr(dnd.ENCODED_FLOAT, Float.valueOf(Float.intBitsToFloat(gqcVar.bc())));
            case 7:
                return new ghr(dnd.ENCODED_LONG, Long.valueOf((gqcVar.af() << 32) | (gqcVar.bc() & 4294967295L)));
            case 8:
                return new ghr(dnd.ENCODED_DOUBLE, Double.valueOf(Double.longBitsToDouble(gqcVar.ax())));
            case 9:
                return new ghr(dnd.ENCODED_TYPE, h(i));
            case 10:
                dnd dndVar = dnd.ENCODED_METHOD_TYPE;
                String r = r(gqcVar.ai());
                dnp dnpVar = new dnp();
                new erd(r, 0).c(dnpVar);
                return new ghr(dndVar, dnpVar);
            case 11:
                return new ghr(dnd.ENCODED_METHOD_HANDLE, ab(i));
            default:
                throw new cyf("Can't encode constant " + y + " as encoded value");
        }
    }

    public fha y(int i) {
        gqc gqcVar = (gqc) this.f18322b;
        gqcVar.f18566ab = ((adr) this.f18323c).f10054b[i] - 1;
        int ap = gqcVar.ap();
        fha fhaVar = fha.f16779a[ap];
        if (fhaVar != null) {
            return fhaVar;
        }
        throw new cyf(awf.ac(ap, "Unknown constant pool tag: "));
    }

    public gps z(int i) {
        k(i);
        gqc gqcVar = (gqc) this.f18322b;
        int ai = gqcVar.ai();
        k(gqcVar.ai());
        int ai2 = gqcVar.ai();
        int ai3 = gqcVar.ai();
        gps gpsVar = new gps();
        gpsVar.f18546f = h(ai);
        gpsVar.f18545e = r(ai2);
        gpsVar.f18547g = r(ai3);
        return gpsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdto
    public zzdty zza() {
        gud gudVar = (gud) this.f18323c;
        return zzdtz.zza(((Long) this.f18325e).longValue(), gudVar.f18757c, zzdts.zzc(gudVar.f18759e), (bxr) this.f18322b, (String) this.f18321a);
    }

    @Override // com.google.android.gms.internal.ads.zzfps
    public synchronized String zza(Context context, String str, String str2, View view, Activity activity) {
        Map zza;
        zza = ((zzfro) this.f18322b).zza();
        zza.put("f", "c");
        zza.put("ctx", context);
        zza.put("cs", str2);
        zza.put("aid", null);
        zza.put("view", view);
        zza.put("act", activity);
        return f(n(zza));
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        zzfkl zzfklVar;
        switch (this.f18324d) {
            case 7:
                agd.b("Failed to parse gmsg params for: ".concat(String.valueOf((Uri) this.f18322b)));
                return;
            default:
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfH)).booleanValue()) {
                    agd.h();
                }
                ((zzfbf) this.f18323c).f7762d = ((zzcqh) this.f18322b).zzd().zza(th);
                synchronized (((zzfbf) this.f18323c)) {
                    try {
                        ((zzcqh) this.f18322b).zzf().zzdB(((zzfbf) this.f18323c).f7762d);
                        zzfgl.zzb(((zzfbf) this.f18323c).f7762d.zza, th, "BannerAdLoader.onFailure");
                        zzfbf zzfbfVar = (zzfbf) this.f18323c;
                        if (zzfbfVar.j) {
                            zzfbfVar.p();
                            zzfbf zzfbfVar2 = (zzfbf) this.f18323c;
                            zzfbfVar2.f7759a.zzd(zzfbfVar2.m.zzc());
                        }
                        if (!((Boolean) zzbeg.zzc.zze()).booleanValue() || (zzfklVar = (zzfkl) this.f18325e) == null) {
                            zzfbf zzfbfVar3 = (zzfbf) this.f18323c;
                            zzfko zzfkoVar = zzfbfVar3.k;
                            zzfka zzfkaVar = (zzfka) this.f18321a;
                            zzfkaVar.zza(zzfbfVar3.f7762d);
                            zzfkaVar.zzh(th);
                            zzfkaVar.zzg(false);
                            zzfkoVar.zzb(zzfkaVar.zzm());
                        } else {
                            zzfklVar.zzc(((zzfbf) this.f18323c).f7762d);
                            zzfka zzfkaVar2 = (zzfka) this.f18321a;
                            zzfkaVar2.zzh(th);
                            zzfkaVar2.zzg(false);
                            zzfklVar.zza(zzfkaVar2);
                            zzfklVar.zzh();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgv
    public void zza(boolean z, Context context, zzcwz zzcwzVar) {
        boolean zzs;
        zzbrf zzbrfVar = (zzbrf) this.f18321a;
        try {
            int ordinal = ((bme) this.f18322b).ordinal();
            if (ordinal == 1) {
                zzs = zzbrfVar.zzs(new bpp(context));
            } else {
                if (ordinal != 2) {
                    if (ordinal == 5) {
                        zzs = zzbrfVar.zzr(new bpp(context));
                    }
                    throw new zzdgu("Adapter failed to show.");
                }
                zzs = zzbrfVar.zzt(new bpp(context));
            }
            if (zzs) {
                if (((zzcxe) this.f18323c) == null) {
                    return;
                }
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbC)).booleanValue() || ((zzfet) this.f18325e).zzY != 2) {
                    return;
                }
                ((zzcxe) this.f18323c).zza();
                return;
            }
            throw new zzdgu("Adapter failed to show.");
        } catch (Throwable th) {
            throw new zzdgu(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvb
    public void zzaf(int i, zzur zzurVar, zzun zzunVar) {
        if (l(zzurVar)) {
            ((zzva) this.f18321a).zzc(w(zzunVar, zzurVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvb
    public void zzag(int i, zzur zzurVar, zzui zzuiVar, zzun zzunVar) {
        if (l(zzurVar)) {
            ((zzva) this.f18321a).zzd(zzuiVar, w(zzunVar, zzurVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvb
    public void zzah(int i, zzur zzurVar, zzui zzuiVar, zzun zzunVar) {
        if (l(zzurVar)) {
            ((zzva) this.f18321a).zze(zzuiVar, w(zzunVar, zzurVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvb
    public void zzai(int i, zzur zzurVar, zzui zzuiVar, zzun zzunVar, IOException iOException, boolean z) {
        if (l(zzurVar)) {
            ((zzva) this.f18321a).zzf(zzuiVar, w(zzunVar, zzurVar), iOException, z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvb
    public void zzaj(int i, zzur zzurVar, zzui zzuiVar, zzun zzunVar) {
        if (l(zzurVar)) {
            ((zzva) this.f18321a).zzg(zzuiVar, w(zzunVar, zzurVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdto
    public zzduc zzb() {
        gud gudVar = (gud) this.f18323c;
        return zzdud.zza(((Long) this.f18325e).longValue(), gudVar.f18757c, zzdts.zzc(gudVar.f18759e), (bxr) this.f18322b, (String) this.f18321a);
    }

    @Override // com.google.android.gms.internal.ads.zzfps
    public synchronized String zzb(Context context, String str, View view, Activity activity) {
        Map zzc;
        zzc = ((zzfro) this.f18322b).zzc();
        zzc.put("f", ada.COLUMN_VALUE);
        zzc.put("ctx", context);
        zzc.put("aid", null);
        zzc.put("view", view);
        zzc.put("act", activity);
        return f(n(zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfkl zzfklVar;
        switch (this.f18324d) {
            case 7:
                List list = (List) this.f18325e;
                String str = (String) this.f18321a;
                zzcfs zzcfsVar = (zzcfs) this.f18323c;
                int i = zzcfs.zzb;
                zzcfsVar.al((Map) obj, list, str);
                return;
            default:
                zzcpd zzcpdVar = (zzcpd) obj;
                synchronized (((zzfbf) this.f18323c)) {
                    try {
                        zzfbf zzfbfVar = (zzfbf) this.f18323c;
                        if (zzfbfVar.j) {
                            zzfbfVar.zzr();
                        }
                        if (!((Boolean) zzbeg.zzc.zze()).booleanValue() || (zzfklVar = (zzfkl) this.f18325e) == null) {
                            zzfko zzfkoVar = ((zzfbf) this.f18323c).k;
                            zzfka zzfkaVar = (zzfka) this.f18321a;
                            zzfkaVar.zzb(zzcpdVar.zzq().zzb);
                            zzfkaVar.zzd(zzcpdVar.zzm().zzg());
                            zzfkaVar.zzg(true);
                            zzfkoVar.zzb(zzfkaVar.zzm());
                        } else {
                            zzfklVar.zzg(zzcpdVar.zzq().zzb);
                            zzfklVar.zze(zzcpdVar.zzm().zzg());
                            zzfka zzfkaVar2 = (zzfka) this.f18321a;
                            zzfkaVar2.zzg(true);
                            zzfklVar.zza(zzfkaVar2);
                            zzfklVar.zzh();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfps
    public synchronized String zzc(Context context, String str) {
        Map zzb;
        zzb = ((zzfro) this.f18322b).zzb();
        zzb.put("f", "q");
        zzb.put("ctx", context);
        zzb.put("aid", null);
        return f(n(zzb));
    }

    @Override // com.google.android.gms.internal.ads.zzfps
    public synchronized void zzd(String str, MotionEvent motionEvent) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            HashMap hashMap = new HashMap();
            hashMap.put("t", new Throwable());
            hashMap.put("aid", null);
            hashMap.put("evt", motionEvent);
            this.f18325e.getClass().getDeclaredMethod("he", Map.class).invoke(this.f18325e, hashMap);
            ((zzfpp) this.f18323c).zzd(3003, System.currentTimeMillis() - currentTimeMillis);
        } catch (Exception e2) {
            throw new zzfrm(2005, e2);
        }
    }
}
