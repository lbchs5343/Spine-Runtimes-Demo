package g;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewParent;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzec;
import com.google.android.gms.internal.ads.zzgck;
import com.google.android.material.appbar.MaterialToolbar;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.function.Function;
import java.util.regex.Pattern;
import java.util.zip.ZipException;
import pkg.a.ModuleDescriptor;

/* loaded from: classes3.dex */
public abstract class kj {

    /* renamed from: c, reason: collision with root package name */
    public static kf f19545c;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f19546d;

    /* renamed from: e, reason: collision with root package name */
    public static ClassLoader f19547e;

    /* renamed from: f, reason: collision with root package name */
    public static Thread f19548f;

    /* renamed from: g, reason: collision with root package name */
    public static final aqn f19549g = new aqn(12);

    public static final void aa(boj bojVar, CancellationException cancellationException) {
        dta dtaVar = (dta) bojVar._x(dwm.o);
        if (dtaVar != null) {
            dtaVar._bi(cancellationException);
        }
    }

    public static void ab(zzec zzecVar) {
        int zzd;
        int zzd2 = zzecVar.zzd(2);
        if (zzd2 == 0) {
            zzecVar.zzn(6);
            return;
        }
        int o = o(zzecVar, 5, 8, 16) + 1;
        if (zzd2 == 1) {
            zzecVar.zzn(o * 7);
            return;
        }
        if (zzd2 == 2) {
            boolean zzp = zzecVar.zzp();
            int i = true != zzp ? 5 : 1;
            int i2 = true == zzp ? 7 : 5;
            int i3 = true == zzp ? 8 : 6;
            int i4 = 0;
            while (i4 < o) {
                if (zzecVar.zzp()) {
                    zzecVar.zzn(7);
                    zzd = 0;
                } else {
                    if (zzecVar.zzd(2) == 3 && zzecVar.zzd(i2) * i != 0) {
                        zzecVar.zzm();
                    }
                    zzd = zzecVar.zzd(i3) * i;
                    if (zzd != 0 && zzd != 180) {
                        zzecVar.zzm();
                    }
                    zzecVar.zzm();
                }
                if (zzd != 0 && zzd != 180 && zzecVar.zzp()) {
                    i4++;
                }
                i4++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x008d, code lost:
    
        if (r2.b(r10, r0) == r1) goto L32;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007b A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #1 {all -> 0x003b, blocks: (B:12:0x0035, B:14:0x005e, B:20:0x0073, B:22:0x007b, B:32:0x0053, B:34:0x005a), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /* JADX WARN: Type inference failed for: r8v6, types: [g.biu] */
    /* JADX WARN: Type inference failed for: r8v9, types: [g.biu] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x008d -> B:13:0x0038). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object ac(fjs fjsVar, bfl bflVar, boolean z, w wVar) {
        etw etwVar;
        int i;
        blg it;
        bfl bflVar2;
        blg blgVar;
        fjs fjsVar2;
        Object e2;
        try {
            if (wVar instanceof etw) {
                etwVar = (etw) wVar;
                int i2 = etwVar.label;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    etwVar.label = i2 - Integer.MIN_VALUE;
                    Object obj = etwVar.result;
                    cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                    i = etwVar.label;
                    CancellationException cancellationException = null;
                    if (i != 0) {
                        eg.k(obj);
                        it = bflVar.iterator();
                        bflVar = bflVar;
                        etwVar.L$0 = fjsVar;
                        etwVar.L$1 = bflVar;
                        etwVar.L$2 = it;
                        etwVar.Z$0 = z;
                        etwVar.label = 1;
                        e2 = it.e(etwVar);
                        if (e2 != cxrVar) {
                        }
                    } else if (i == 1) {
                        z = etwVar.Z$0;
                        blgVar = (blg) etwVar.L$2;
                        ?? r8 = (biu) etwVar.L$1;
                        fjsVar2 = (fjs) etwVar.L$0;
                        eg.k(obj);
                        bflVar2 = r8;
                        if (((Boolean) obj).booleanValue()) {
                        }
                    } else {
                        if (i != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        z = etwVar.Z$0;
                        blgVar = (blg) etwVar.L$2;
                        ?? r82 = (biu) etwVar.L$1;
                        fjsVar2 = (fjs) etwVar.L$0;
                        eg.k(obj);
                        bfl bflVar3 = r82;
                        it = blgVar;
                        fjsVar = fjsVar2;
                        bflVar = bflVar3;
                        etwVar.L$0 = fjsVar;
                        etwVar.L$1 = bflVar;
                        etwVar.L$2 = it;
                        etwVar.Z$0 = z;
                        etwVar.label = 1;
                        e2 = it.e(etwVar);
                        if (e2 != cxrVar) {
                            return cxrVar;
                        }
                        fjsVar2 = fjsVar;
                        blgVar = it;
                        obj = e2;
                        bflVar2 = bflVar;
                        if (((Boolean) obj).booleanValue()) {
                            if (z) {
                                bflVar2._bi(null);
                            }
                            return dgi.f14134a;
                        }
                        Object f2 = blgVar.f();
                        etwVar.L$0 = fjsVar2;
                        etwVar.L$1 = bflVar2;
                        etwVar.L$2 = blgVar;
                        etwVar.Z$0 = z;
                        etwVar.label = 2;
                        bflVar3 = bflVar2;
                    }
                }
            }
            if (i != 0) {
            }
        } finally {
        }
        etwVar = new etw(wVar);
        Object obj2 = etwVar.result;
        cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
        i = etwVar.label;
        CancellationException cancellationException2 = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x008c, code lost:
    
        if (r1 == null) goto L61;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized ClassLoader ad() {
        ClassLoader classLoader;
        SecurityException e2;
        Thread thread;
        ThreadGroup threadGroup;
        gzk gzkVar;
        synchronized (kj.class) {
            if (f19547e == null) {
                Thread thread2 = f19548f;
                ClassLoader classLoader2 = null;
                if (thread2 == null) {
                    ThreadGroup threadGroup2 = Looper.getMainLooper().getThread().getThreadGroup();
                    if (threadGroup2 == null) {
                        thread2 = null;
                    } else {
                        synchronized (Void.class) {
                            try {
                                try {
                                    int activeGroupCount = threadGroup2.activeGroupCount();
                                    ThreadGroup[] threadGroupArr = new ThreadGroup[activeGroupCount];
                                    threadGroup2.enumerate(threadGroupArr);
                                    int i = 0;
                                    int i2 = 0;
                                    while (true) {
                                        if (i2 >= activeGroupCount) {
                                            threadGroup = null;
                                            break;
                                        }
                                        threadGroup = threadGroupArr[i2];
                                        if ("dynamiteLoader".equals(threadGroup.getName())) {
                                            break;
                                        }
                                        i2++;
                                    }
                                    if (threadGroup == null) {
                                        threadGroup = new ThreadGroup(threadGroup2, "dynamiteLoader");
                                    }
                                    int activeCount = threadGroup.activeCount();
                                    Thread[] threadArr = new Thread[activeCount];
                                    threadGroup.enumerate(threadArr);
                                    while (true) {
                                        if (i >= activeCount) {
                                            thread = null;
                                            break;
                                        }
                                        thread = threadArr[i];
                                        if ("GmsDynamite".equals(thread.getName())) {
                                            break;
                                        }
                                        i++;
                                    }
                                    if (thread == null) {
                                        try {
                                            gzkVar = new gzk(threadGroup, "GmsDynamite");
                                        } catch (SecurityException e3) {
                                            e2 = e3;
                                        }
                                        try {
                                            gzkVar.setContextClassLoader(null);
                                            gzkVar.start();
                                            thread = gzkVar;
                                        } catch (SecurityException e4) {
                                            e2 = e4;
                                            thread = gzkVar;
                                            e2.getMessage();
                                            thread2 = thread;
                                            f19548f = thread2;
                                        }
                                    }
                                } catch (SecurityException e5) {
                                    e2 = e5;
                                    thread = null;
                                }
                            } finally {
                            }
                        }
                        thread2 = thread;
                    }
                    f19548f = thread2;
                }
                synchronized (thread2) {
                    try {
                        classLoader2 = f19548f.getContextClassLoader();
                    } catch (SecurityException e6) {
                        e6.getMessage();
                    }
                }
                f19547e = classLoader2;
            }
            classLoader = f19547e;
        }
        return classLoader;
    }

    public static final void h(boj bojVar) {
        dta dtaVar = (dta) bojVar._x(dwm.o);
        if (dtaVar != null && !dtaVar.x()) {
            throw ((fyw) dtaVar).ar();
        }
    }

    public static final void i(Throwable th, boj bojVar) {
        try {
            gxh gxhVar = (gxh) bojVar._x(dwm.j);
            if (gxhVar != null) {
                gxhVar.a(th);
            } else {
                gs.d(th, bojVar);
            }
        } catch (Throwable th2) {
            if (th != th2) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                cux.ag(runtimeException, th);
                th = runtimeException;
            }
            gs.d(th, bojVar);
        }
    }

    public static void j(View view, ddm ddmVar) {
        gid gidVar = ddmVar.ds.p;
        if (gidVar == null || !gidVar.f18192d) {
            return;
        }
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            f2 += ((View) parent).getElevation();
        }
        dwo dwoVar = ddmVar.ds;
        if (dwoVar.k != f2) {
            dwoVar.k = f2;
            ddmVar.ek();
        }
    }

    public static Typeface k(Configuration configuration, Typeface typeface) {
        int i;
        int i2;
        int weight;
        int i3;
        Typeface create;
        if (Build.VERSION.SDK_INT < 31) {
            return null;
        }
        i = configuration.fontWeightAdjustment;
        if (i == Integer.MAX_VALUE) {
            return null;
        }
        i2 = configuration.fontWeightAdjustment;
        if (i2 == 0 || typeface == null) {
            return null;
        }
        weight = typeface.getWeight();
        i3 = configuration.fontWeightAdjustment;
        create = Typeface.create(typeface, dzm.af(i3 + weight, 1, 1000), typeface.isItalic());
        return create;
    }

    public static void l(hed hedVar) {
        List<fza> list = hedVar.ak;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((fza) it.next()).i = null;
        }
        int size = list.size();
        for (fza fzaVar : list) {
            List<fza> list2 = fzaVar.f17685e;
            if (list2.size() >= 2) {
                fza fzaVar2 = fzaVar.f17683ab;
                for (fza fzaVar3 : list2) {
                    for (; fzaVar3 != fzaVar2; fzaVar3 = fzaVar3.f17683ab) {
                        BitSet bitSet = fzaVar3.i;
                        if (bitSet == null) {
                            bitSet = new BitSet(size);
                            fzaVar3.i = bitSet;
                        }
                        bitSet.set(fzaVar.x);
                    }
                }
            }
        }
        for (fza fzaVar4 : list) {
            BitSet bitSet2 = fzaVar4.i;
            if (bitSet2 == null || bitSet2.isEmpty()) {
                fzaVar4.i = giu.f18223a;
            }
        }
    }

    public static edw m(dta dtaVar, boolean z, aov aovVar, int i) {
        if ((i & 1) != 0) {
            z = false;
        }
        boolean z2 = (i & 2) != 0;
        if (dtaVar instanceof fyw) {
            return ((fyw) dtaVar).ag(z, z2, aovVar);
        }
        ahm ahmVar = new ahm(1, aovVar, era.class, "invoke", "invoke(Ljava/lang/Throwable;)V", 0);
        fyw fywVar = (fyw) dtaVar;
        fywVar.getClass();
        return fywVar.ag(z, z2, new bht(ahmVar));
    }

    public static afo n(int i) {
        if (i != 0 && i == 1) {
            return new gki();
        }
        return new eeu();
    }

    public static int o(zzec zzecVar, int i, int i2, int i3) {
        zzdb.zzd(Math.max(Math.max(i, i2), i3) <= 31);
        int i4 = (1 << i) - 1;
        int i5 = (1 << i2) - 1;
        zzgck.zza(zzgck.zza(i4, i5), 1 << i3);
        if (zzecVar.zza() >= i) {
            int zzd = zzecVar.zzd(i);
            if (zzd == i4) {
                if (zzecVar.zza() >= i2) {
                    int zzd2 = zzecVar.zzd(i2);
                    zzd += zzd2;
                    if (zzd2 == i5) {
                        if (zzecVar.zza() >= i3) {
                            return zzecVar.zzd(i3) + zzd;
                        }
                    }
                }
            }
            return zzd;
        }
        return -1;
    }

    public static dxw p(Context context) {
        try {
            return dxw.t(context, dxw.j, ModuleDescriptor.MODULE_ID);
        } catch (Exception e2) {
            throw new eof(e2);
        }
    }

    public static void q(zzec zzecVar) {
        zzecVar.zzn(3);
        zzecVar.zzn(8);
        boolean zzp = zzecVar.zzp();
        boolean zzp2 = zzecVar.zzp();
        if (zzp) {
            zzecVar.zzn(5);
        }
        if (zzp2) {
            zzecVar.zzn(6);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:10:0x0044
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1179)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public static java.lang.String r(android.content.Context r3) {
        /*
            r0 = 1
            java.lang.String r1 = "connectivity"
            java.lang.Object r1 = r3.getSystemService(r1)     // Catch: java.lang.Throwable -> L44
            android.net.ConnectivityManager r1 = (android.net.ConnectivityManager) r1     // Catch: java.lang.Throwable -> L44
            if (r1 != 0) goto Le
            g.ftc r3 = g.ftc.NONE     // Catch: java.lang.Throwable -> L44
            goto L46
        Le:
            android.net.NetworkInfo r1 = r1.getActiveNetworkInfo()     // Catch: java.lang.Throwable -> L44
            if (r1 == 0) goto L41
            boolean r2 = r1.isAvailable()     // Catch: java.lang.Throwable -> L44
            if (r2 != 0) goto L1b
            goto L41
        L1b:
            int r1 = r1.getType()     // Catch: java.lang.Throwable -> L44
            if (r0 != r1) goto L24
            g.ftc r3 = g.ftc.WIFI     // Catch: java.lang.Throwable -> L44
            goto L46
        L24:
            if (r1 != 0) goto L3e
            java.lang.String r1 = "phone"
            java.lang.Object r3 = r3.getSystemService(r1)     // Catch: java.lang.Throwable -> L44
            android.telephony.TelephonyManager r3 = (android.telephony.TelephonyManager) r3     // Catch: java.lang.Throwable -> L44
            int r3 = r3.getNetworkType()     // Catch: java.lang.Throwable -> L44
            switch(r3) {
                case 3: goto L3b;
                case 4: goto L35;
                case 5: goto L3b;
                case 6: goto L3b;
                case 7: goto L35;
                case 8: goto L3b;
                case 9: goto L3b;
                case 10: goto L3b;
                case 11: goto L35;
                case 12: goto L3b;
                case 13: goto L38;
                case 14: goto L3b;
                case 15: goto L3b;
                default: goto L35;
            }     // Catch: java.lang.Throwable -> L44
        L35:
            g.ftc r3 = g.ftc.MOBILE     // Catch: java.lang.Throwable -> L44
            goto L46
        L38:
            g.ftc r3 = g.ftc.MOBILE_4G     // Catch: java.lang.Throwable -> L44
            goto L46
        L3b:
            g.ftc r3 = g.ftc.MOBILE_3G     // Catch: java.lang.Throwable -> L44
            goto L46
        L3e:
            g.ftc r3 = g.ftc.MOBILE     // Catch: java.lang.Throwable -> L44
            goto L46
        L41:
            g.ftc r3 = g.ftc.NONE     // Catch: java.lang.Throwable -> L44
            goto L46
        L44:
            g.ftc r3 = g.ftc.MOBILE
        L46:
            int[] r1 = g.zj.f20401a     // Catch: java.lang.Exception -> L6c
            int r3 = r3.ordinal()     // Catch: java.lang.Exception -> L6c
            r3 = r1[r3]     // Catch: java.lang.Exception -> L6c
            if (r3 == r0) goto L69
            r0 = 2
            if (r3 == r0) goto L66
            r0 = 3
            if (r3 == r0) goto L63
            r0 = 4
            if (r3 == r0) goto L60
            r0 = 5
            if (r3 == r0) goto L5d
            goto L6c
        L5d:
            java.lang.String r3 = "mobile"
            goto L6e
        L60:
            java.lang.String r3 = "4g"
            goto L6e
        L63:
            java.lang.String r3 = "3g"
            goto L6e
        L66:
            java.lang.String r3 = "2g"
            goto L6e
        L69:
            java.lang.String r3 = "wifi"
            goto L6e
        L6c:
            java.lang.String r3 = ""
        L6e:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: g.kj.r(android.content.Context):java.lang.String");
    }

    public static /* synthetic */ boolean s(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void t(Activity activity, cqo cqoVar, Bundle bundle, boolean z) {
        boolean isStateSaved;
        FragmentManager fragmentManager = activity.getFragmentManager();
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        Fragment findFragmentByTag = fragmentManager.findFragmentByTag("dialog");
        if (findFragmentByTag != null && findFragmentByTag.isAdded()) {
            beginTransaction.remove(findFragmentByTag);
        }
        if (bundle != null) {
            cqoVar.setArguments(bundle);
        }
        if (!z) {
            beginTransaction.add(cqoVar, "dialog");
            beginTransaction.commitAllowingStateLoss();
            return;
        }
        beginTransaction.addToBackStack(null);
        try {
            cqoVar.show(beginTransaction, "dialog");
        } catch (Exception unused) {
            beginTransaction.add(cqoVar, "dialog");
            if (Build.VERSION.SDK_INT < 26) {
                beginTransaction.commitAllowingStateLoss();
                return;
            }
            isStateSaved = fragmentManager.isStateSaved();
            if (isStateSaved) {
                return;
            }
            try {
                beginTransaction.commit();
            } catch (Exception unused2) {
                beginTransaction.commitAllowingStateLoss();
            }
        }
    }

    public static boolean u(int i, boolean z) {
        if (!z && !cbd.d(i)) {
            return false;
        }
        if ((i < 880 && Character.isUnicodeIdentifierPart(i) && !Character.isIdentifierIgnorable(i)) || i == 46 || i == 45) {
            Pattern pattern = cbd.f12584a;
            if (Character.isJavaIdentifierPart(i)) {
                return true;
            }
        }
        return i == 46;
    }

    public static bgk v(RandomAccessFile randomAccessFile) {
        long length = randomAccessFile.length();
        long j = length - 22;
        if (j < 0) {
            throw new ZipException("File too short to be a zip file: " + randomAccessFile.length());
        }
        long j2 = length - 65558;
        long j3 = j2 >= 0 ? j2 : 0L;
        int reverseBytes = Integer.reverseBytes(101010256);
        do {
            randomAccessFile.seek(j);
            if (randomAccessFile.readInt() == reverseBytes) {
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                bgk bgkVar = new bgk();
                bgkVar.f11516b = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                bgkVar.f11515a = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                return bgkVar;
            }
            j--;
        } while (j >= j3);
        throw new ZipException("End Of Central Directory signature not found");
    }

    public static fza[] w(ArrayList arrayList, Function function) {
        int i;
        fza fzaVar;
        int size = arrayList.size();
        fza[] fzaVarArr = new fza[size];
        fzaVarArr[0] = (fza) arrayList.get(0);
        boolean z = true;
        while (z) {
            z = false;
            for (int i2 = 1; i2 < size; i2++) {
                fza fzaVar2 = (fza) arrayList.get(i2);
                List list = (List) function.apply(fzaVar2);
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        i = -1;
                        fzaVar = null;
                        break;
                    }
                    fzaVar = (fza) it.next();
                    i = fzaVar.x;
                    if (fzaVarArr[i] != null) {
                        break;
                    }
                }
                if (fzaVar == null) {
                    throw new gck("No immediate dominator for block: " + fzaVar2);
                }
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    int i3 = ((fza) it2.next()).x;
                    if (i3 != i && fzaVarArr[i3] != null) {
                        int i4 = fzaVar.x;
                        while (i3 != i4) {
                            while (i3 > i4) {
                                i3 = fzaVarArr[i3].x;
                            }
                            while (i4 > i3) {
                                i4 = fzaVarArr[i4].x;
                            }
                        }
                        fzaVar = (fza) arrayList.get(i3);
                    }
                }
                if (fzaVarArr[i2] != fzaVar) {
                    fzaVarArr[i2] = fzaVar;
                    z = true;
                }
            }
        }
        return fzaVarArr;
    }

    public static ArrayList x(MaterialToolbar materialToolbar, CharSequence charSequence) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < materialToolbar.getChildCount(); i++) {
            View childAt = materialToolbar.getChildAt(i);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (TextUtils.equals(textView.getText(), charSequence)) {
                    arrayList.add(textView);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void y(bto btoVar, coh cohVar, coh cohVar2) {
        try {
            baf.ad(dgi.f14134a, awt.ab(((bry) btoVar).e(cohVar, cohVar2)));
        } catch (Throwable th) {
            cohVar2._z(eg.i(th));
            throw th;
        }
    }

    public static Object z(Context context, String str, evt evtVar) {
        try {
            return evtVar.zza(p(context).v(str));
        } catch (Exception e2) {
            throw new eof(e2);
        }
    }

    public abstract void b(gea geaVar, Object obj);
}
