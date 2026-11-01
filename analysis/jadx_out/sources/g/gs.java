package g;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.core.content.FileProvider;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.util.Collection;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class gs {

    /* renamed from: a, reason: collision with root package name */
    public static volatile HandlerThread f18669a;

    /* renamed from: b, reason: collision with root package name */
    public static volatile Handler f18670b;

    /* renamed from: c, reason: collision with root package name */
    public static final hy f18671c = new hy("NO_THREAD_ELEMENTS", 1);

    public static int aa(int i) {
        return (int) (Integer.rotateLeft((int) (i * (-862048943)), 15) * 461845907);
    }

    public static MappedByteBuffer ab(Context context, Uri uri) {
        ParcelFileDescriptor openFileDescriptor;
        try {
            openFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r", null);
        } catch (IOException unused) {
        }
        if (openFileDescriptor == null) {
            if (openFileDescriptor != null) {
                openFileDescriptor.close();
                return null;
            }
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
            try {
                FileChannel channel = fileInputStream.getChannel();
                MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                fileInputStream.close();
                openFileDescriptor.close();
                return map;
            } finally {
            }
        } finally {
        }
    }

    public static eek ac(amj amjVar) {
        if (amjVar instanceof cih) {
            List c2 = ((cih) amjVar).c();
            if (!c2.isEmpty()) {
                return (eek) awf.q(1, c2);
            }
        } else {
            if (amjVar instanceof foe) {
                return null;
            }
            if (!(amjVar instanceof cfm)) {
                throw new gck(n(amjVar));
            }
            List x = ((cfm) amjVar).x();
            if (!x.isEmpty()) {
                return ac((amj) awf.q(1, x));
            }
        }
        return null;
    }

    public static final Object ad(boj bojVar, Object obj) {
        if (obj == null) {
            obj = al(bojVar);
        }
        if (obj == 0) {
            return f18671c;
        }
        if (obj instanceof Integer) {
            return bojVar.c(new glc(((Number) obj).intValue(), bojVar), gak.f17796a);
        }
        awf.e(obj);
        throw null;
    }

    public static fep ae(amj amjVar) {
        if (amjVar instanceof cih) {
            cih cihVar = (cih) amjVar;
            eek eekVar = (eek) acw.ai(cihVar.c());
            if (eekVar == null) {
                return null;
            }
            return new fep(cihVar, eekVar);
        }
        if (!(amjVar instanceof foe)) {
            if (!(amjVar instanceof cfm)) {
                throw new gck(n(amjVar));
            }
            List x = ((cfm) amjVar).x();
            if (x.isEmpty()) {
                return null;
            }
            return ae((amj) acw.ai(x));
        }
        List<amj> e2 = ((foe) amjVar).e();
        if (Collection.b.stream(e2).filter(new brj(15)).count() != 1) {
            return null;
        }
        for (amj amjVar2 : e2) {
            if (amjVar2 != null) {
                return ae(amjVar2);
            }
        }
        return null;
    }

    public static Handler af() {
        if (f18670b == null) {
            f();
        }
        return f18670b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean ag(amj amjVar, cfm cfmVar) {
        if (amjVar == cfmVar) {
            return true;
        }
        if (cfmVar == null) {
            return false;
        }
        cfm cfmVar2 = ((bjk) cfmVar).f11698d;
        while (true) {
            cfm cfmVar3 = cfmVar2;
            cfm cfmVar4 = cfmVar;
            cfmVar = cfmVar3;
            if (amjVar == cfmVar) {
                return true;
            }
            if (cfmVar == null) {
                if (!((lh) cfmVar4).l.j(acq.bh)) {
                    return false;
                }
                if (amjVar == cfmVar4) {
                    return true;
                }
                if (!(amjVar instanceof cfm)) {
                    return false;
                }
                for (amj amjVar2 : ((cfm) amjVar).x()) {
                    guv guvVar = (guv) ((lh) amjVar2).l.k(acq.aa);
                    if (guvVar != null && (amjVar2 instanceof cfm)) {
                        Iterator it = guvVar.i.iterator();
                        while (it.hasNext()) {
                            if (ag(((aea) it.next()).f10081d, cfmVar4)) {
                                return true;
                            }
                        }
                    }
                    if (ag(amjVar2, cfmVar4)) {
                        return true;
                    }
                }
                return false;
            }
            cfmVar2 = ((bjk) cfmVar).f11698d;
        }
    }

    public static Drawable ah(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable ai;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (ai = fso.ai(context, resourceId)) == null) ? typedArray.getDrawable(i) : ai;
    }

    public static ColorStateList ai(Context context, TypedArray typedArray, int i) {
        int resourceId;
        ColorStateList bh;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (bh = eyt.bh(context, resourceId)) == null) ? typedArray.getColorStateList(i) : bh;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0065 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object aj(vd vdVar, w wVar) {
        ayf ayfVar;
        int i;
        aye ayeVar;
        dia e2;
        fjs fjsVar;
        Object obj;
        hy hyVar = ckd.h;
        if (wVar instanceof ayf) {
            ayfVar = (ayf) wVar;
            int i2 = ayfVar.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                ayfVar.label = i2 - Integer.MIN_VALUE;
                Object obj2 = ayfVar.result;
                Object obj3 = cxr.COROUTINE_SUSPENDED;
                i = ayfVar.label;
                if (i != 0) {
                    eg.k(obj2);
                    aye ayeVar2 = new aye();
                    ayeVar2.element = hyVar;
                    fjs bxmVar = new bxm(ayeVar2);
                    try {
                        ayfVar.L$0 = ayeVar2;
                        ayfVar.L$1 = bxmVar;
                        ayfVar.label = 1;
                        if (vdVar.a(bxmVar, ayfVar) == obj3) {
                            return obj3;
                        }
                        ayeVar = ayeVar2;
                    } catch (dia e3) {
                        ayeVar = ayeVar2;
                        e2 = e3;
                        fjsVar = bxmVar;
                        if (e2.f14211a != fjsVar) {
                        }
                        obj = ayeVar.element;
                        if (obj == hyVar) {
                        }
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    fjsVar = (bxm) ayfVar.L$1;
                    ayeVar = (aye) ayfVar.L$0;
                    try {
                        eg.k(obj2);
                    } catch (dia e4) {
                        e2 = e4;
                        if (e2.f14211a != fjsVar) {
                            throw e2;
                        }
                        obj = ayeVar.element;
                        if (obj == hyVar) {
                        }
                    }
                }
                obj = ayeVar.element;
                if (obj == hyVar) {
                    return obj;
                }
                throw new NoSuchElementException("Expected at least one element");
            }
        }
        ayfVar = new ayf(wVar);
        Object obj22 = ayfVar.result;
        Object obj32 = cxr.COROUTINE_SUSPENDED;
        i = ayfVar.label;
        if (i != 0) {
        }
        obj = ayeVar.element;
        if (obj == hyVar) {
        }
    }

    public static int ak(Object obj) {
        return aa(obj == null ? 0 : obj.hashCode());
    }

    public static final Object al(boj bojVar) {
        Object c2 = bojVar.c(0, gak.f17799e);
        bff.d(c2);
        return c2;
    }

    public static final void am(gsn gsnVar, bdp bdpVar, boolean z) {
        Object obj = gsn.f18700b.get(gsnVar);
        Throwable m = gsnVar.m(obj);
        Object i = m != null ? eg.i(m) : gsnVar.n(obj);
        if (!z) {
            bdpVar._z(i);
            return;
        }
        bff.ag(bdpVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
        sk skVar = (sk) bdpVar;
        w wVar = skVar.f19980d;
        Object obj2 = skVar.f19978b;
        boj context = wVar.getContext();
        Object ad = ad(context, obj2);
        aoa bb = ad != f18671c ? eyt.bb(wVar, context, ad) : null;
        try {
            wVar._z(i);
            if (bb == null || bb._bh()) {
                av(context, ad);
            }
        } catch (Throwable th) {
            if (bb == null || bb._bh()) {
                av(context, ad);
            }
            throw th;
        }
    }

    public static byte[] an(ByteBuffer byteBuffer, cht chtVar) {
        byteBuffer.position(chtVar.f12904b);
        ByteBuffer slice = byteBuffer.slice();
        slice.limit((int) chtVar.i);
        long j = chtVar.l;
        if (j > 2147483647L) {
            throw new DataFormatException("Entry too large: " + j);
        }
        int i = (int) j;
        byte[] bArr = new byte[i];
        byte[] bArr2 = new byte[slice.remaining()];
        slice.get(bArr2);
        Inflater inflater = new Inflater(true);
        inflater.setInput(bArr2);
        int inflate = inflater.inflate(bArr);
        inflater.end();
        if (inflate == i) {
            return bArr;
        }
        throw new DataFormatException("Unexpected size of decompressed entry: " + chtVar + ", got: " + inflate + ", expected: " + i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007c, code lost:
    
        if (r6.ar().equals(r5) == false) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0082 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Serializable ao(edl edlVar, fjs fjsVar, w wVar) {
        fey feyVar;
        int i;
        aye ayeVar;
        Throwable th;
        dta dtaVar;
        if (wVar instanceof fey) {
            feyVar = (fey) wVar;
            int i2 = feyVar.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                feyVar.label = i2 - Integer.MIN_VALUE;
                Object obj = feyVar.result;
                cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                i = feyVar.label;
                if (i != 0) {
                    eg.k(obj);
                    aye ayeVar2 = new aye();
                    try {
                        fjs ehqVar = new ehq(fjsVar, ayeVar2);
                        feyVar.L$0 = ayeVar2;
                        feyVar.label = 1;
                        if (edlVar.a(ehqVar, feyVar) == cxrVar) {
                            return cxrVar;
                        }
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        ayeVar = ayeVar2;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ayeVar = (aye) feyVar.L$0;
                    try {
                        eg.k(obj);
                        return null;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                th = (Throwable) ayeVar.element;
                if (th != null || !th.equals(th)) {
                    dtaVar = (dta) feyVar.getContext()._x(dwm.o);
                    if (dtaVar != null) {
                        fyw fywVar = (fyw) dtaVar;
                        if (fywVar.ac()) {
                        }
                    }
                    if (th != null) {
                        return th;
                    }
                    if (th instanceof CancellationException) {
                        cux.ag(th, th);
                        throw th;
                    }
                    cux.ag(th, th);
                    throw th;
                }
                throw th;
            }
        }
        feyVar = new fey(wVar);
        Object obj2 = feyVar.result;
        cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
        i = feyVar.label;
        if (i != 0) {
        }
        th = (Throwable) ayeVar.element;
        if (th != null) {
        }
        dtaVar = (dta) feyVar.getContext()._x(dwm.o);
        if (dtaVar != null) {
        }
        if (th != null) {
        }
    }

    public static String ap(String str) {
        List list;
        int i;
        Comparable comparable;
        String str2;
        bff.p(str, "<this>");
        fzy fzyVar = new fzy(str);
        if (fzyVar.hasNext()) {
            Object next = fzyVar.next();
            if (fzyVar.hasNext()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(next);
                while (fzyVar.hasNext()) {
                    arrayList.add(fzyVar.next());
                }
                list = arrayList;
            } else {
                list = cro.r(next);
            }
        } else {
            list = fai.f16469a;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (!dcv.bo((String) obj)) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList(bkk.a(arrayList2));
        Iterator it = arrayList2.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            String str3 = (String) it.next();
            int length = str3.length();
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                }
                if (!egh.bh(str3.charAt(i))) {
                    break;
                }
                i++;
            }
            if (i == -1) {
                i = str3.length();
            }
            arrayList3.add(Integer.valueOf(i));
        }
        Iterator it2 = arrayList3.iterator();
        if (it2.hasNext()) {
            comparable = (Comparable) it2.next();
            while (it2.hasNext()) {
                Comparable comparable2 = (Comparable) it2.next();
                if (comparable.compareTo(comparable2) > 0) {
                    comparable = comparable2;
                }
            }
        } else {
            comparable = null;
        }
        Integer num = (Integer) comparable;
        int intValue = num != null ? num.intValue() : 0;
        int length2 = str.length();
        list.size();
        int bd = grj.bd(list);
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : list) {
            int i2 = i + 1;
            if (i < 0) {
                grj.m();
                throw null;
            }
            String str4 = (String) obj2;
            if ((i == 0 || i == bd) && dcv.bo(str4)) {
                str2 = null;
            } else {
                bff.p(str4, "<this>");
                if (intValue < 0) {
                    throw new IllegalArgumentException(awf.b(intValue, "Requested character count ", " is less than zero.").toString());
                }
                int length3 = str4.length();
                if (intValue <= length3) {
                    length3 = intValue;
                }
                str2 = str4.substring(length3);
                bff.e(str2, "substring(...)");
            }
            if (str2 != null) {
                arrayList4.add(str2);
            }
            i = i2;
        }
        StringBuilder sb = new StringBuilder(length2);
        gsv.bk(arrayList4, sb, "\n", "", "", "...", null);
        return sb.toString();
    }

    public static final bhw aq(dqx dqxVar) {
        if (dqxVar instanceof bhw) {
            ((bhw) dqxVar).getClass();
        } else {
            dqxVar = new bhw(dqxVar);
        }
        return (bhw) dqxVar;
    }

    public static ColorStateList ar(Context context, dzh dzhVar, int i) {
        int resourceId;
        ColorStateList bh;
        TypedArray typedArray = (TypedArray) dzhVar.f15121f;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (bh = eyt.bh(context, resourceId)) == null) ? dzhVar.aa(i) : bh;
    }

    public static boolean as(amj amjVar) {
        if (amjVar instanceof cih) {
            return ffb.cd((cih) amjVar, hay.BREAK);
        }
        if (amjVar instanceof cfm) {
            List x = ((cfm) amjVar).x();
            return !x.isEmpty() && as((amj) awf.q(1, x));
        }
        throw new gck("Unknown container type: " + amjVar);
    }

    public static int at(amj amjVar) {
        if (amjVar instanceof cih) {
            Iterator it = ((cih) amjVar).c().iterator();
            while (it.hasNext()) {
                int i = ((eek) it.next()).bp;
                if (i != 0) {
                    return i;
                }
            }
        } else {
            if (amjVar instanceof aoo) {
                return ((eiy) ((aoo) amjVar)).ac();
            }
            if (amjVar instanceof foe) {
                List e2 = ((foe) amjVar).e();
                if (!e2.isEmpty()) {
                    Iterator it2 = e2.iterator();
                    while (it2.hasNext()) {
                        int at = at((amj) it2.next());
                        if (at != 0) {
                            return at;
                        }
                    }
                }
                return 0;
            }
            if (amjVar instanceof cfm) {
                List x = ((cfm) amjVar).x();
                if (!x.isEmpty()) {
                    Iterator it3 = x.iterator();
                    while (it3.hasNext()) {
                        int at2 = at((amj) it3.next());
                        if (at2 != 0) {
                            return at2;
                        }
                    }
                }
            }
        }
        return 0;
    }

    public static void au(Activity activity, String str) {
        boolean canRequestPackageInstalls;
        Intent intent = new Intent("android.intent.action.VIEW");
        File file = new File(str);
        if (file.exists() && file.isFile() && file.length() > 0) {
            int i = 1;
            if (Build.VERSION.SDK_INT >= 24) {
                intent.setFlags(1);
                intent.setDataAndType(FileProvider.getUriForFile(activity, activity.getPackageName() + ".fileprovider", file), "application/vnd.android.package-archive");
            } else {
                intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
            }
            if (dyd.bp(26)) {
                canRequestPackageInstalls = activity.getPackageManager().canRequestPackageInstalls();
                if (!canRequestPackageInstalls) {
                    gqc gqcVar = new gqc(activity);
                    gqcVar.am(R.string.title_request_permission);
                    ((die) gqcVar.z).m = activity.getString(R.string.content_request_permission2, activity.getString(R.string.permission_install_from_unknown), activity.getString(R.string.permission_to_upgrade_app));
                    gqcVar.ay(R.string.alert_dialog_ok, new dtm(activity, 2, intent));
                    gqcVar.x(R.string.alert_dialog_cancel, new ads(activity, i));
                    eyt.ay(activity, gqcVar.r());
                    return;
                }
            }
            fgj.e().f(activity, intent);
        }
    }

    public static final void av(boj bojVar, Object obj) {
        if (obj == f18671c) {
            return;
        }
        if (!(obj instanceof glc)) {
            Object c2 = bojVar.c(null, gak.f17801g);
            bff.ag(c2, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
            awf.e(c2);
            throw null;
        }
        glc glcVar = (glc) obj;
        od[] odVarArr = glcVar.f18339b;
        int length = odVarArr.length - 1;
        if (length < 0) {
            return;
        }
        od odVar = odVarArr[length];
        bff.d(null);
        Object obj2 = glcVar.f18338a[length];
        throw null;
    }

    public static int aw(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(android.R.style.Animation.Activity, new int[]{i});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    public static void ax(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static boolean ay(Bundle bundle, Bundle bundle2) {
        if (bundle != null && bundle2 != null) {
            if (bundle.size() != bundle2.size()) {
                return false;
            }
            for (String str : bundle.keySet()) {
                if (!bundle2.containsKey(str)) {
                    return false;
                }
                Object obj = bundle.get(str);
                Object obj2 = bundle2.get(str);
                if (obj == null || obj2 == null) {
                    bundle2 = obj2;
                    bundle = obj;
                } else if (obj instanceof Bundle) {
                    if (!(obj2 instanceof Bundle) || !ay((Bundle) obj, (Bundle) obj2)) {
                        return false;
                    }
                } else if (obj.getClass().isArray()) {
                    int length = Array.getLength(obj);
                    if (!obj2.getClass().isArray() || length != Array.getLength(obj2)) {
                        return false;
                    }
                    for (int i = 0; i < length; i++) {
                        if (!ffb.w(Array.get(obj, i), Array.get(obj2, i))) {
                            return false;
                        }
                    }
                } else if (!obj.equals(obj2)) {
                    return false;
                }
            }
            return true;
        }
        return bundle == null && bundle2 == null;
    }

    public static boolean az(fza fzaVar, amj amjVar) {
        if (amjVar instanceof cih) {
            return amjVar == fzaVar;
        }
        if (!(amjVar instanceof cfm)) {
            throw new gck(n(amjVar));
        }
        Iterator it = ((cfm) amjVar).x().iterator();
        while (it.hasNext()) {
            if (az(fzaVar, (amj) it.next())) {
                return true;
            }
        }
        return false;
    }

    public static int ba(amj amjVar) {
        int i = 0;
        if (!(amjVar instanceof cih)) {
            if (!(amjVar instanceof cfm)) {
                throw new gck(n(amjVar));
            }
            Iterator it = ((cfm) amjVar).x().iterator();
            while (it.hasNext()) {
                i += ba((amj) it.next());
            }
            return i;
        }
        for (eek eekVar : ((cih) amjVar).c()) {
            if (!eekVar.l.g(csv.DONT_GENERATE)) {
                i++;
            }
        }
        return i;
    }

    public static final gsn bb(bdp bdpVar) {
        gsn gsnVar;
        gsn gsnVar2;
        if (!(bdpVar instanceof sk)) {
            return new gsn(1, bdpVar);
        }
        sk skVar = (sk) bdpVar;
        hy hyVar = baf.s;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = sk.f19977a;
        loop0: while (true) {
            Object obj = atomicReferenceFieldUpdater.get(skVar);
            gsnVar = null;
            if (obj == null) {
                atomicReferenceFieldUpdater.set(skVar, hyVar);
                gsnVar2 = null;
                break;
            }
            if (obj instanceof gsn) {
                while (!atomicReferenceFieldUpdater.compareAndSet(skVar, obj, hyVar)) {
                    if (atomicReferenceFieldUpdater.get(skVar) != obj) {
                        break;
                    }
                }
                gsnVar2 = (gsn) obj;
                break loop0;
            }
            if (obj != hyVar && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
        if (gsnVar2 != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = gsn.f18700b;
            Object obj2 = atomicReferenceFieldUpdater2.get(gsnVar2);
            if (!(obj2 instanceof vj) || ((vj) obj2).f20162a == null) {
                gsn.f18701c.set(gsnVar2, 536870911);
                atomicReferenceFieldUpdater2.set(gsnVar2, ghp.f18169a);
                gsnVar = gsnVar2;
            } else {
                gsnVar2.u();
            }
            if (gsnVar != null) {
                return gsnVar;
            }
        }
        return new gsn(2, bdpVar);
    }

    public static HashMap bc(JsonReader jsonReader) {
        HashMap hashMap = new HashMap();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.getClass();
            if (nextName.equals("lel")) {
                hashMap.put("lel", l(jsonReader));
            } else if (nextName.equals("lottie_back")) {
                JSONObject jSONObject = new JSONObject();
                hashMap.put("lottie_back", jSONObject);
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    nextName2.getClass();
                    if (nextName2.equals(LiveConfigKey.HIGH)) {
                        try {
                            jSONObject.putOpt(LiveConfigKey.HIGH, Integer.valueOf(jsonReader.nextInt()));
                            jSONObject.putOpt("vid", "lottie_back");
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                        }
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        Object remove = hashMap.remove("lottie_back");
        if (remove instanceof JSONObject) {
            Object obj = hashMap.get("lel");
            if (obj instanceof JSONArray) {
                ((JSONArray) obj).put(remove);
            } else {
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(remove);
                hashMap.put("lel", jSONArray);
            }
        }
        return hashMap;
    }

    public static int bd(Context context, TypedArray typedArray, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i, i2);
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, i2);
        obtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
    
        if (r0 == false) goto L9;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void be(bgm bgmVar, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) {
        Throwable th;
        Cursor cursor;
        if (bgmVar == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        ?? r3 = 0;
        try {
            try {
                cursor = sQLiteDatabase.query("SQLITE_MASTER", new String[]{abn.EXTRA_UA_APP_NAME}, "name=?", new String[]{str}, null, null, null);
                try {
                    boolean moveToFirst = cursor.moveToFirst();
                    cursor.close();
                } catch (SQLiteException e2) {
                    e = e2;
                    bgmVar.f11520g.e(str, "Error querying for table", e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    sQLiteDatabase.execSQL(str2);
                    try {
                        HashSet hashSet = new HashSet();
                        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM " + str + " LIMIT 0", null);
                        try {
                            Collections.addAll(hashSet, rawQuery.getColumnNames());
                            rawQuery.close();
                            for (String str4 : str3.split(",")) {
                                if (!hashSet.remove(str4)) {
                                    throw new SQLiteException("Table " + str + " is missing required column: " + str4);
                                }
                            }
                            if (strArr != null) {
                                for (int i = 0; i < strArr.length; i += 2) {
                                    if (!hashSet.remove(strArr[i])) {
                                        sQLiteDatabase.execSQL(strArr[i + 1]);
                                    }
                                }
                            }
                            if (hashSet.isEmpty()) {
                                return;
                            }
                            bgmVar.f11520g.e(str, "Table has extra columns. table, columns", TextUtils.join(", ", hashSet));
                        } catch (Throwable th2) {
                            rawQuery.close();
                            throw th2;
                        }
                    } catch (SQLiteException e3) {
                        bgmVar.f11518b.i(str, "Failed to verify columns on table that was just created");
                        throw e3;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                r3 = str2;
                if (r3 != 0) {
                    throw th;
                }
                r3.close();
                throw th;
            }
        } catch (SQLiteException e4) {
            e = e4;
            cursor = null;
        } catch (Throwable th4) {
            th = th4;
            if (r3 != 0) {
            }
        }
    }

    public static final void d(Throwable th, boj bojVar) {
        Throwable runtimeException;
        Iterator it = fhg.f16792a.iterator();
        while (it.hasNext()) {
            try {
                ((gxh) it.next()).a(th);
            } catch (Throwable th2) {
                if (th == th2) {
                    runtimeException = th;
                } else {
                    runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                    cux.ag(runtimeException, th);
                }
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, runtimeException);
            }
        }
        try {
            cux.ag(th, new byg(bojVar));
        } catch (Throwable unused) {
        }
        Thread currentThread2 = Thread.currentThread();
        currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0058 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0042 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void e(JsonReader jsonReader, dac dacVar) {
        char c2;
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                int hashCode = nextName.hashCode();
                if (hashCode == 3239) {
                    if (nextName.equals("el")) {
                        c2 = 1;
                        if (c2 != 0) {
                        }
                    }
                    c2 = 65535;
                    if (c2 != 0) {
                    }
                } else if (hashCode != 3276) {
                    if (hashCode == 107027 && nextName.equals("lel")) {
                        c2 = 2;
                        if (c2 != 0) {
                            dacVar.f13840b = jsonReader.nextInt();
                        } else if (c2 == 1) {
                            dacVar.f13842d = jsonReader.nextString();
                        } else if (c2 != 2) {
                            jsonReader.skipValue();
                        } else {
                            dacVar.f13845g = l(jsonReader);
                        }
                    }
                    c2 = 65535;
                    if (c2 != 0) {
                    }
                } else {
                    if (nextName.equals("fr")) {
                        c2 = 0;
                        if (c2 != 0) {
                        }
                    }
                    c2 = 65535;
                    if (c2 != 0) {
                    }
                }
            }
            jsonReader.endObject();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public static HandlerThread f() {
        if (f18669a == null) {
            synchronized (gs.class) {
                try {
                    if (f18669a == null) {
                        HandlerThread handlerThread = new HandlerThread("default_npth_thread");
                        f18669a = handlerThread;
                        handlerThread.start();
                        f18670b = new Handler(f18669a.getLooper());
                    }
                } finally {
                }
            }
        }
        return f18669a;
    }

    public static boolean g(cih cihVar, amj amjVar) {
        eek s = ffb.s(cihVar);
        if (s == null) {
            return false;
        }
        hay hayVar = s.ah;
        if (hayVar == hay.RETURN) {
            return true;
        }
        if (hayVar == hay.THROW) {
            coe coeVar = (coe) s.l.k(acq.al);
            if (coeVar == null) {
                return true;
            }
            Iterator it = coeVar.f13218a.iterator();
            while (it.hasNext()) {
                if (az(((aea) it.next()).i, amjVar)) {
                    return false;
                }
            }
            return true;
        }
        if (hayVar != hay.BREAK) {
            return false;
        }
        frs frsVar = (frs) s.l.k(acq.at);
        if (frsVar != null) {
            Iterator it2 = frsVar.f17307b.iterator();
            while (it2.hasNext()) {
                if (!az(((gcv) it2.next()).f17902c, amjVar)) {
                    return true;
                }
            }
        }
        dhu dhuVar = (dhu) s.l.k(acq.x);
        return (dhuVar == null || az(dhuVar.f14206a.f17902c, amjVar)) ? false : true;
    }

    public static String h(int i) {
        switch (i) {
            case 1:
                return AVErrorInfo.ERROR;
            case 2:
                return "int";
            case 3:
                return "float";
            case 4:
                return "string";
            case 5:
                return "iso8601";
            case 6:
                return "true";
            case 7:
                return "false";
            case 8:
                return "null";
            case 9:
                return "new";
            case 10:
                return "(";
            case 11:
                return ")";
            case 12:
                return "{";
            case 13:
                return "}";
            case 14:
                return "[";
            case 15:
                return "]";
            case 16:
                return ",";
            case 17:
                return ":";
            case 18:
                return "ident";
            case 19:
            default:
                return "Unknown";
            case 20:
                return "EOF";
            case 21:
                return "Set";
            case 22:
                return "TreeSet";
            case 23:
                return "undefined";
        }
    }

    public static amj i(cih cihVar, amj amjVar) {
        if (amjVar instanceof cih) {
            if (amjVar == cihVar) {
                return amjVar;
            }
            return null;
        }
        if (!(amjVar instanceof cfm)) {
            throw new gck(n(amjVar));
        }
        cfm cfmVar = (cfm) amjVar;
        Iterator it = cfmVar.x().iterator();
        while (it.hasNext()) {
            amj i = i(cihVar, (amj) it.next());
            if (i != null) {
                return i instanceof cih ? cfmVar : i;
            }
        }
        return null;
    }

    public static File j(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i = 0; i < 100; i++) {
            File file = new File(cacheDir, str + i);
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    public static void k(androidx.fragment.app.u uVar, CharSequence charSequence) {
        if (uVar == null) {
            return;
        }
        if (uVar instanceof ub) {
            ub ubVar = (ub) uVar;
            if (ubVar.getSupportActionBar() != null) {
                ubVar.getSupportActionBar().aa(charSequence);
                return;
            }
            return;
        }
        ActionBar actionBar = uVar.getActionBar();
        if (actionBar != null) {
            actionBar.setSubtitle(charSequence);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static JSONArray l(JsonReader jsonReader) {
        char c2;
        JSONArray jSONArray = new JSONArray();
        try {
            jsonReader.beginArray();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        while (jsonReader.hasNext()) {
            JSONObject jSONObject = new JSONObject();
            jSONArray.put(jSONObject);
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                int hashCode = nextName.hashCode();
                if (hashCode == 3324) {
                    if (nextName.equals(LiveConfigKey.HIGH)) {
                        c2 = 1;
                        if (c2 != 0) {
                        }
                        e2.printStackTrace();
                        return jSONArray;
                    }
                    c2 = 65535;
                    if (c2 != 0) {
                    }
                    e2.printStackTrace();
                    return jSONArray;
                }
                if (hashCode == 116753 && nextName.equals("vid")) {
                    c2 = 0;
                    if (c2 != 0) {
                        try {
                            jSONObject.put("vid", jsonReader.nextString());
                        } catch (JSONException e3) {
                            e3.printStackTrace();
                        }
                    } else if (c2 != 1) {
                        jsonReader.skipValue();
                    } else {
                        try {
                            jSONObject.put(LiveConfigKey.HIGH, jsonReader.nextInt());
                        } catch (JSONException e4) {
                            e4.printStackTrace();
                        }
                    }
                    e2.printStackTrace();
                    return jSONArray;
                }
                c2 = 65535;
                if (c2 != 0) {
                }
                e2.printStackTrace();
                return jSONArray;
            }
            jsonReader.endObject();
        }
        jsonReader.endArray();
        return jSONArray;
    }

    public static boolean m(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    public static String n(amj amjVar) {
        if (amjVar == null) {
            return "Null container variable";
        }
        return "Unknown container type: " + amjVar.getClass();
    }

    public static void o(amj amjVar, HashSet hashSet) {
        if (amjVar instanceof cih) {
            hashSet.add((cih) amjVar);
        } else {
            if (!(amjVar instanceof cfm)) {
                throw new gck(n(amjVar));
            }
            Iterator it = ((cfm) amjVar).x().iterator();
            while (it.hasNext()) {
                o((amj) it.next(), hashSet);
            }
        }
    }

    public static boolean p(File file, Resources resources, int i) {
        InputStream inputStream;
        try {
            inputStream = resources.openRawResource(i);
            try {
                boolean s = s(file, inputStream);
                ax(inputStream);
                return s;
            } catch (Throwable th) {
                th = th;
                ax(inputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    public static boolean q(amj amjVar, amj amjVar2) {
        boolean z = false;
        if (amjVar2 instanceof fza) {
            List list = ((fza) amjVar2).f17684d;
            if (list.isEmpty()) {
                z = true;
            } else if (list.size() == 1) {
                z = ((fza) list.get(0)).f17684d.isEmpty();
            }
            if (!z) {
                return g((cih) amjVar2, amjVar);
            }
        } else {
            if (amjVar2 instanceof foe) {
                return acw.bh(((foe) amjVar2).e(), new brj(14));
            }
            if (amjVar2 instanceof cih) {
                return g((cih) amjVar2, amjVar);
            }
            if (!(amjVar2 instanceof cfm)) {
                throw new gck(n(amjVar2));
            }
            List x = ((cfm) amjVar2).x();
            if (x.isEmpty() || !q(amjVar, (amj) awf.q(1, x))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:442:0x0729. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0140. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:293:0x04cd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:297:0x04a1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0237 A[Catch: Exception -> 0x01fa, TryCatch #2 {Exception -> 0x01fa, blocks: (B:57:0x01f2, B:28:0x0234, B:29:0x0237, B:32:0x023d, B:34:0x0244, B:36:0x024b, B:39:0x0259, B:41:0x025f, B:43:0x0269, B:46:0x026c, B:48:0x0270, B:50:0x0277, B:52:0x027e, B:54:0x0285, B:68:0x01fd, B:71:0x0205, B:74:0x020f, B:77:0x0219, B:80:0x0221, B:83:0x0229, B:87:0x0290), top: B:56:0x01f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x023d A[Catch: Exception -> 0x01fa, TryCatch #2 {Exception -> 0x01fa, blocks: (B:57:0x01f2, B:28:0x0234, B:29:0x0237, B:32:0x023d, B:34:0x0244, B:36:0x024b, B:39:0x0259, B:41:0x025f, B:43:0x0269, B:46:0x026c, B:48:0x0270, B:50:0x0277, B:52:0x027e, B:54:0x0285, B:68:0x01fd, B:71:0x0205, B:74:0x020f, B:77:0x0219, B:80:0x0221, B:83:0x0229, B:87:0x0290), top: B:56:0x01f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0244 A[Catch: Exception -> 0x01fa, TryCatch #2 {Exception -> 0x01fa, blocks: (B:57:0x01f2, B:28:0x0234, B:29:0x0237, B:32:0x023d, B:34:0x0244, B:36:0x024b, B:39:0x0259, B:41:0x025f, B:43:0x0269, B:46:0x026c, B:48:0x0270, B:50:0x0277, B:52:0x027e, B:54:0x0285, B:68:0x01fd, B:71:0x0205, B:74:0x020f, B:77:0x0219, B:80:0x0221, B:83:0x0229, B:87:0x0290), top: B:56:0x01f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:368:0x05a0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x024b A[Catch: Exception -> 0x01fa, TryCatch #2 {Exception -> 0x01fa, blocks: (B:57:0x01f2, B:28:0x0234, B:29:0x0237, B:32:0x023d, B:34:0x0244, B:36:0x024b, B:39:0x0259, B:41:0x025f, B:43:0x0269, B:46:0x026c, B:48:0x0270, B:50:0x0277, B:52:0x027e, B:54:0x0285, B:68:0x01fd, B:71:0x0205, B:74:0x020f, B:77:0x0219, B:80:0x0221, B:83:0x0229, B:87:0x0290), top: B:56:0x01f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:385:0x0588 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0270 A[Catch: Exception -> 0x01fa, TryCatch #2 {Exception -> 0x01fa, blocks: (B:57:0x01f2, B:28:0x0234, B:29:0x0237, B:32:0x023d, B:34:0x0244, B:36:0x024b, B:39:0x0259, B:41:0x025f, B:43:0x0269, B:46:0x026c, B:48:0x0270, B:50:0x0277, B:52:0x027e, B:54:0x0285, B:68:0x01fd, B:71:0x0205, B:74:0x020f, B:77:0x0219, B:80:0x0221, B:83:0x0229, B:87:0x0290), top: B:56:0x01f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:493:0x082c A[Catch: Exception -> 0x07e9, TryCatch #3 {Exception -> 0x07e9, blocks: (B:511:0x07df, B:492:0x0829, B:493:0x082c, B:496:0x0836, B:498:0x083d, B:500:0x0844, B:502:0x084b, B:504:0x0852, B:506:0x0859, B:508:0x0860, B:519:0x07ec, B:522:0x07f6, B:525:0x0800, B:528:0x080a, B:531:0x0814, B:534:0x081e, B:541:0x086f), top: B:510:0x07df }] */
    /* JADX WARN: Removed duplicated region for block: B:496:0x0836 A[Catch: Exception -> 0x07e9, TryCatch #3 {Exception -> 0x07e9, blocks: (B:511:0x07df, B:492:0x0829, B:493:0x082c, B:496:0x0836, B:498:0x083d, B:500:0x0844, B:502:0x084b, B:504:0x0852, B:506:0x0859, B:508:0x0860, B:519:0x07ec, B:522:0x07f6, B:525:0x0800, B:528:0x080a, B:531:0x0814, B:534:0x081e, B:541:0x086f), top: B:510:0x07df }] */
    /* JADX WARN: Removed duplicated region for block: B:498:0x083d A[Catch: Exception -> 0x07e9, TryCatch #3 {Exception -> 0x07e9, blocks: (B:511:0x07df, B:492:0x0829, B:493:0x082c, B:496:0x0836, B:498:0x083d, B:500:0x0844, B:502:0x084b, B:504:0x0852, B:506:0x0859, B:508:0x0860, B:519:0x07ec, B:522:0x07f6, B:525:0x0800, B:528:0x080a, B:531:0x0814, B:534:0x081e, B:541:0x086f), top: B:510:0x07df }] */
    /* JADX WARN: Removed duplicated region for block: B:500:0x0844 A[Catch: Exception -> 0x07e9, TryCatch #3 {Exception -> 0x07e9, blocks: (B:511:0x07df, B:492:0x0829, B:493:0x082c, B:496:0x0836, B:498:0x083d, B:500:0x0844, B:502:0x084b, B:504:0x0852, B:506:0x0859, B:508:0x0860, B:519:0x07ec, B:522:0x07f6, B:525:0x0800, B:528:0x080a, B:531:0x0814, B:534:0x081e, B:541:0x086f), top: B:510:0x07df }] */
    /* JADX WARN: Removed duplicated region for block: B:502:0x084b A[Catch: Exception -> 0x07e9, TryCatch #3 {Exception -> 0x07e9, blocks: (B:511:0x07df, B:492:0x0829, B:493:0x082c, B:496:0x0836, B:498:0x083d, B:500:0x0844, B:502:0x084b, B:504:0x0852, B:506:0x0859, B:508:0x0860, B:519:0x07ec, B:522:0x07f6, B:525:0x0800, B:528:0x080a, B:531:0x0814, B:534:0x081e, B:541:0x086f), top: B:510:0x07df }] */
    /* JADX WARN: Removed duplicated region for block: B:504:0x0852 A[Catch: Exception -> 0x07e9, TryCatch #3 {Exception -> 0x07e9, blocks: (B:511:0x07df, B:492:0x0829, B:493:0x082c, B:496:0x0836, B:498:0x083d, B:500:0x0844, B:502:0x084b, B:504:0x0852, B:506:0x0859, B:508:0x0860, B:519:0x07ec, B:522:0x07f6, B:525:0x0800, B:528:0x080a, B:531:0x0814, B:534:0x081e, B:541:0x086f), top: B:510:0x07df }] */
    /* JADX WARN: Removed duplicated region for block: B:506:0x0859 A[Catch: Exception -> 0x07e9, TryCatch #3 {Exception -> 0x07e9, blocks: (B:511:0x07df, B:492:0x0829, B:493:0x082c, B:496:0x0836, B:498:0x083d, B:500:0x0844, B:502:0x084b, B:504:0x0852, B:506:0x0859, B:508:0x0860, B:519:0x07ec, B:522:0x07f6, B:525:0x0800, B:528:0x080a, B:531:0x0814, B:534:0x081e, B:541:0x086f), top: B:510:0x07df }] */
    /* JADX WARN: Removed duplicated region for block: B:508:0x0860 A[Catch: Exception -> 0x07e9, TryCatch #3 {Exception -> 0x07e9, blocks: (B:511:0x07df, B:492:0x0829, B:493:0x082c, B:496:0x0836, B:498:0x083d, B:500:0x0844, B:502:0x084b, B:504:0x0852, B:506:0x0859, B:508:0x0860, B:519:0x07ec, B:522:0x07f6, B:525:0x0800, B:528:0x080a, B:531:0x0814, B:534:0x081e, B:541:0x086f), top: B:510:0x07df }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0277 A[Catch: Exception -> 0x01fa, TryCatch #2 {Exception -> 0x01fa, blocks: (B:57:0x01f2, B:28:0x0234, B:29:0x0237, B:32:0x023d, B:34:0x0244, B:36:0x024b, B:39:0x0259, B:41:0x025f, B:43:0x0269, B:46:0x026c, B:48:0x0270, B:50:0x0277, B:52:0x027e, B:54:0x0285, B:68:0x01fd, B:71:0x0205, B:74:0x020f, B:77:0x0219, B:80:0x0221, B:83:0x0229, B:87:0x0290), top: B:56:0x01f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x027e A[Catch: Exception -> 0x01fa, TryCatch #2 {Exception -> 0x01fa, blocks: (B:57:0x01f2, B:28:0x0234, B:29:0x0237, B:32:0x023d, B:34:0x0244, B:36:0x024b, B:39:0x0259, B:41:0x025f, B:43:0x0269, B:46:0x026c, B:48:0x0270, B:50:0x0277, B:52:0x027e, B:54:0x0285, B:68:0x01fd, B:71:0x0205, B:74:0x020f, B:77:0x0219, B:80:0x0221, B:83:0x0229, B:87:0x0290), top: B:56:0x01f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0285 A[Catch: Exception -> 0x01fa, TryCatch #2 {Exception -> 0x01fa, blocks: (B:57:0x01f2, B:28:0x0234, B:29:0x0237, B:32:0x023d, B:34:0x0244, B:36:0x024b, B:39:0x0259, B:41:0x025f, B:43:0x0269, B:46:0x026c, B:48:0x0270, B:50:0x0277, B:52:0x027e, B:54:0x0285, B:68:0x01fd, B:71:0x0205, B:74:0x020f, B:77:0x0219, B:80:0x0221, B:83:0x0229, B:87:0x0290), top: B:56:0x01f2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static cgf r(JsonReader jsonReader) {
        char c2;
        ArrayList arrayList;
        LongSparseArray longSparseArray;
        bul bulVar;
        HashMap hashMap;
        HashMap hashMap2;
        String str;
        Object obj;
        String str2;
        Object obj2;
        char c3;
        Object obj3;
        String str3;
        String str4;
        char c4;
        char c5;
        char c6;
        char c7;
        char c8;
        char c9;
        char c10;
        float h = ebx.h();
        LongSparseArray longSparseArray2 = new LongSparseArray();
        ArrayList arrayList2 = new ArrayList();
        HashMap hashMap3 = new HashMap();
        HashMap hashMap4 = new HashMap();
        HashMap hashMap5 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        SparseArray sparseArray = new SparseArray();
        gnb gnbVar = new gnb();
        dac dacVar = new dac();
        bul bulVar2 = new bul();
        cgf cgfVar = new cgf();
        jsonReader.beginObject();
        int i = 0;
        int i2 = 0;
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        String str5 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.getClass();
            float f5 = h;
            int i3 = i;
            HashMap hashMap6 = hashMap3;
            switch (nextName.hashCode()) {
                case -1408207997:
                    if (nextName.equals("assets")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1109732030:
                    if (nextName.equals("layers")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -865448777:
                    if (nextName.equals("globalEvent")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 104:
                    if (nextName.equals("h")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 118:
                    if (nextName.equals(ada.COLUMN_VALUE)) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 119:
                    if (nextName.equals("w")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3208:
                    if (nextName.equals("dl")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3276:
                    if (nextName.equals("fr")) {
                        c2 = 7;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3292:
                    if (nextName.equals("gc")) {
                        c2 = '\b';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3367:
                    if (nextName.equals("ip")) {
                        c2 = '\t';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3553:
                    if (nextName.equals("op")) {
                        c2 = '\n';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 94623709:
                    if (nextName.equals("chars")) {
                        c2 = 11;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 97615364:
                    if (nextName.equals("fonts")) {
                        c2 = '\f';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 110364485:
                    if (nextName.equals("timer")) {
                        c2 = '\r';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 839250809:
                    if (nextName.equals("markers")) {
                        c2 = 14;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            HashMap hashMap7 = hashMap4;
            String str6 = TTDownloadField.TT_ID;
            Object obj4 = "layers";
            String str7 = "el";
            Object obj5 = "h";
            String str8 = "lel";
            LongSparseArray longSparseArray3 = longSparseArray2;
            String str9 = "inel";
            char c11 = c2;
            int i4 = 3239;
            switch (c11) {
                case 0:
                    arrayList = arrayList3;
                    longSparseArray = longSparseArray3;
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        ArrayList arrayList4 = new ArrayList();
                        bul bulVar3 = bulVar2;
                        LongSparseArray longSparseArray4 = new LongSparseArray();
                        jsonReader.beginObject();
                        int i5 = 0;
                        int i6 = 0;
                        String str10 = null;
                        String str11 = null;
                        String str12 = null;
                        String str13 = null;
                        ArrayList arrayList5 = null;
                        String str14 = null;
                        int[][] iArr = null;
                        JSONArray jSONArray = null;
                        while (jsonReader.hasNext()) {
                            String nextName2 = jsonReader.nextName();
                            nextName2.getClass();
                            switch (nextName2.hashCode()) {
                                case -1109732030:
                                    str = str9;
                                    obj = obj5;
                                    str2 = str7;
                                    obj2 = obj4;
                                    if (nextName2.equals(obj2)) {
                                        c3 = 0;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 104:
                                    str = str9;
                                    obj = obj5;
                                    str2 = str7;
                                    obj2 = obj4;
                                    if (nextName2.equals(obj)) {
                                        c3 = 1;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 112:
                                    str = str9;
                                    if (nextName2.equals("p")) {
                                        obj = obj5;
                                        c3 = 2;
                                        str2 = str7;
                                        obj2 = obj4;
                                        break;
                                    }
                                    obj = obj5;
                                    c3 = 65535;
                                    str2 = str7;
                                    obj2 = obj4;
                                case 117:
                                    str = str9;
                                    if (nextName2.equals("u")) {
                                        obj = obj5;
                                        c3 = 3;
                                        str2 = str7;
                                        obj2 = obj4;
                                        break;
                                    }
                                    obj = obj5;
                                    c3 = 65535;
                                    str2 = str7;
                                    obj2 = obj4;
                                case 119:
                                    str = str9;
                                    if (nextName2.equals("w")) {
                                        obj = obj5;
                                        c3 = 4;
                                        str2 = str7;
                                        obj2 = obj4;
                                        break;
                                    }
                                    obj = obj5;
                                    c3 = 65535;
                                    str2 = str7;
                                    obj2 = obj4;
                                case 3239:
                                    str = str9;
                                    if (nextName2.equals(str7)) {
                                        obj = obj5;
                                        c3 = 5;
                                        str2 = str7;
                                        obj2 = obj4;
                                        break;
                                    }
                                    obj = obj5;
                                    c3 = 65535;
                                    str2 = str7;
                                    obj2 = obj4;
                                case 3355:
                                    str = str9;
                                    if (nextName2.equals(str6)) {
                                        obj = obj5;
                                        c3 = 6;
                                        str2 = str7;
                                        obj2 = obj4;
                                        break;
                                    }
                                    obj = obj5;
                                    c3 = 65535;
                                    str2 = str7;
                                    obj2 = obj4;
                                case 3695:
                                    str = str9;
                                    if (nextName2.equals("tc")) {
                                        obj = obj5;
                                        c3 = 7;
                                        str2 = str7;
                                        obj2 = obj4;
                                        break;
                                    }
                                    obj = obj5;
                                    c3 = 65535;
                                    str2 = str7;
                                    obj2 = obj4;
                                case 107027:
                                    str = str9;
                                    if (nextName2.equals(str8)) {
                                        obj = obj5;
                                        c3 = '\b';
                                        str2 = str7;
                                        obj2 = obj4;
                                        break;
                                    }
                                    obj = obj5;
                                    c3 = 65535;
                                    str2 = str7;
                                    obj2 = obj4;
                                case 112793:
                                    str = str9;
                                    if (nextName2.equals("rel")) {
                                        obj = obj5;
                                        c3 = '\t';
                                        str2 = str7;
                                        obj2 = obj4;
                                        break;
                                    }
                                    obj = obj5;
                                    c3 = 65535;
                                    str2 = str7;
                                    obj2 = obj4;
                                case 3237004:
                                    if (nextName2.equals(str9)) {
                                        str = str9;
                                        obj = obj5;
                                        c3 = '\n';
                                        str2 = str7;
                                        obj2 = obj4;
                                        break;
                                    }
                                default:
                                    str = str9;
                                    obj = obj5;
                                    c3 = 65535;
                                    str2 = str7;
                                    obj2 = obj4;
                                    break;
                            }
                            switch (c3) {
                                case 0:
                                    obj4 = obj2;
                                    obj3 = obj;
                                    str3 = str6;
                                    str4 = str8;
                                    jsonReader.beginArray();
                                    while (jsonReader.hasNext()) {
                                        cbc ac = aky.ac(jsonReader, cgfVar);
                                        longSparseArray4.put(ac.f12581e, ac);
                                        arrayList4.add(ac);
                                    }
                                    jsonReader.endArray();
                                    str7 = str2;
                                    str9 = str;
                                    str6 = str3;
                                    str8 = str4;
                                    break;
                                case 1:
                                    obj4 = obj2;
                                    obj3 = obj;
                                    i6 = jsonReader.nextInt();
                                    str7 = str2;
                                    str9 = str;
                                    break;
                                case 2:
                                    obj4 = obj2;
                                    obj3 = obj;
                                    str11 = jsonReader.nextString();
                                    str7 = str2;
                                    str9 = str;
                                    break;
                                case 3:
                                    obj4 = obj2;
                                    obj3 = obj;
                                    str12 = jsonReader.nextString();
                                    str7 = str2;
                                    str9 = str;
                                    break;
                                case 4:
                                    obj4 = obj2;
                                    obj3 = obj;
                                    i5 = jsonReader.nextInt();
                                    str7 = str2;
                                    str9 = str;
                                    break;
                                case 5:
                                    obj4 = obj2;
                                    obj3 = obj;
                                    str14 = jsonReader.nextString();
                                    str7 = str2;
                                    str9 = str;
                                    break;
                                case 6:
                                    obj4 = obj2;
                                    obj3 = obj;
                                    str10 = jsonReader.nextString();
                                    str7 = str2;
                                    str9 = str;
                                    break;
                                case 7:
                                    obj4 = obj2;
                                    obj3 = obj;
                                    jsonReader.beginArray();
                                    try {
                                        ArrayList arrayList6 = new ArrayList();
                                        while (jsonReader.hasNext()) {
                                            fhe fheVar = new fhe();
                                            jsonReader.beginObject();
                                            while (jsonReader.hasNext()) {
                                                String nextName3 = jsonReader.nextName();
                                                str3 = str6;
                                                try {
                                                    int hashCode = nextName3.hashCode();
                                                    str4 = str8;
                                                    if (hashCode == 99) {
                                                        if (nextName3.equals("c")) {
                                                            c4 = 3;
                                                            switch (c4) {
                                                            }
                                                            str6 = str3;
                                                            str8 = str4;
                                                        }
                                                        c4 = 65535;
                                                        switch (c4) {
                                                        }
                                                        str6 = str3;
                                                        str8 = str4;
                                                    } else if (hashCode == 102) {
                                                        if (nextName3.equals("f")) {
                                                            c4 = 4;
                                                            switch (c4) {
                                                            }
                                                            str6 = str3;
                                                            str8 = str4;
                                                        }
                                                        c4 = 65535;
                                                        switch (c4) {
                                                        }
                                                        str6 = str3;
                                                        str8 = str4;
                                                    } else if (hashCode == 108) {
                                                        if (nextName3.equals("l")) {
                                                            c4 = 0;
                                                            switch (c4) {
                                                            }
                                                            str6 = str3;
                                                            str8 = str4;
                                                        }
                                                        c4 = 65535;
                                                        switch (c4) {
                                                        }
                                                        str6 = str3;
                                                        str8 = str4;
                                                    } else if (hashCode == 115) {
                                                        if (nextName3.equals("s")) {
                                                            c4 = 2;
                                                            switch (c4) {
                                                            }
                                                            str6 = str3;
                                                            str8 = str4;
                                                        }
                                                        c4 = 65535;
                                                        switch (c4) {
                                                        }
                                                        str6 = str3;
                                                        str8 = str4;
                                                    } else if (hashCode == 3153) {
                                                        if (nextName3.equals("bs")) {
                                                            c4 = 5;
                                                            switch (c4) {
                                                            }
                                                            str6 = str3;
                                                            str8 = str4;
                                                        }
                                                        c4 = 65535;
                                                        switch (c4) {
                                                        }
                                                        str6 = str3;
                                                        str8 = str4;
                                                    } else if (hashCode != 3449) {
                                                        if (hashCode == 96670) {
                                                            try {
                                                                if (nextName3.equals("ali")) {
                                                                    c4 = 6;
                                                                    switch (c4) {
                                                                        case 0:
                                                                            fheVar.f16785c = jsonReader.nextInt();
                                                                            break;
                                                                        case 1:
                                                                            fheVar.f16787e = jsonReader.nextInt();
                                                                            break;
                                                                        case 2:
                                                                            fheVar.f16784b = jsonReader.nextInt();
                                                                            break;
                                                                        case 3:
                                                                            fheVar.f16788f = jsonReader.nextString();
                                                                            break;
                                                                        case 4:
                                                                            fheVar.f16783a = jsonReader.nextString();
                                                                            break;
                                                                        case 5:
                                                                            fheVar.f16786d = jsonReader.nextInt();
                                                                            break;
                                                                        case 6:
                                                                            fheVar.f16789g = jsonReader.nextString();
                                                                            break;
                                                                        default:
                                                                            jsonReader.skipValue();
                                                                            break;
                                                                    }
                                                                    str6 = str3;
                                                                    str8 = str4;
                                                                }
                                                            } catch (Exception e2) {
                                                                e = e2;
                                                                e.printStackTrace();
                                                                arrayList5 = null;
                                                                jsonReader.endArray();
                                                                str7 = str2;
                                                                str9 = str;
                                                                str6 = str3;
                                                                str8 = str4;
                                                                obj5 = obj3;
                                                            }
                                                        }
                                                        c4 = 65535;
                                                        switch (c4) {
                                                        }
                                                        str6 = str3;
                                                        str8 = str4;
                                                    } else {
                                                        if (nextName3.equals("le")) {
                                                            c4 = 1;
                                                            switch (c4) {
                                                            }
                                                            str6 = str3;
                                                            str8 = str4;
                                                        }
                                                        c4 = 65535;
                                                        switch (c4) {
                                                        }
                                                        str6 = str3;
                                                        str8 = str4;
                                                    }
                                                } catch (Exception e3) {
                                                    e = e3;
                                                    str4 = str8;
                                                    e.printStackTrace();
                                                    arrayList5 = null;
                                                    jsonReader.endArray();
                                                    str7 = str2;
                                                    str9 = str;
                                                    str6 = str3;
                                                    str8 = str4;
                                                    obj5 = obj3;
                                                }
                                            }
                                            String str15 = str6;
                                            String str16 = str8;
                                            jsonReader.endObject();
                                            arrayList6.add(fheVar);
                                            str6 = str15;
                                            str8 = str16;
                                        }
                                        str3 = str6;
                                        str4 = str8;
                                        arrayList5 = arrayList6;
                                    } catch (Exception e4) {
                                        e = e4;
                                        str3 = str6;
                                    }
                                    jsonReader.endArray();
                                    str7 = str2;
                                    str9 = str;
                                    str6 = str3;
                                    str8 = str4;
                                case '\b':
                                    obj4 = obj2;
                                    obj3 = obj;
                                    jSONArray = l(jsonReader);
                                    str7 = str2;
                                    str9 = str;
                                    break;
                                case '\t':
                                    obj4 = obj2;
                                    obj3 = obj;
                                    str13 = jsonReader.nextString();
                                    str7 = str2;
                                    str9 = str;
                                    break;
                                case '\n':
                                    obj4 = obj2;
                                    char c12 = 0;
                                    int[][] iArr2 = {new int[]{-1, -1}};
                                    jsonReader.beginArray();
                                    if (jsonReader.hasNext()) {
                                        jsonReader.beginArray();
                                        obj3 = obj;
                                        int i7 = 0;
                                        while (i7 < 2) {
                                            if (jsonReader.hasNext()) {
                                                iArr2[c12][i7] = jsonReader.nextInt();
                                            }
                                            i7++;
                                            c12 = 0;
                                        }
                                        jsonReader.endArray();
                                    } else {
                                        obj3 = obj;
                                    }
                                    jsonReader.endArray();
                                    iArr = iArr2;
                                    str7 = str2;
                                    str9 = str;
                                    break;
                                default:
                                    jsonReader.skipValue();
                                    obj4 = obj2;
                                    obj3 = obj;
                                    str3 = str6;
                                    str4 = str8;
                                    str7 = str2;
                                    str9 = str;
                                    str6 = str3;
                                    str8 = str4;
                                    break;
                            }
                            obj5 = obj3;
                        }
                        String str17 = str9;
                        String str18 = str6;
                        String str19 = str8;
                        Object obj6 = obj5;
                        String str20 = str7;
                        jsonReader.endObject();
                        if (str11 != null) {
                            hashMap7.put(str10, new hcl(i5, i6, str10, str11, str12, str13, arrayList5, str14, iArr, jSONArray));
                        } else {
                            hashMap6.put(str10, arrayList4);
                        }
                        str7 = str20;
                        bulVar2 = bulVar3;
                        str9 = str17;
                        str6 = str18;
                        str8 = str19;
                        obj5 = obj6;
                    }
                    bulVar = bulVar2;
                    hashMap = hashMap6;
                    hashMap2 = hashMap7;
                    jsonReader.endArray();
                    hashMap3 = hashMap;
                    longSparseArray2 = longSparseArray;
                    i = i3;
                    bulVar2 = bulVar;
                    arrayList3 = arrayList;
                    hashMap4 = hashMap2;
                    h = f5;
                    break;
                case 1:
                    arrayList = arrayList3;
                    jsonReader.beginArray();
                    int i8 = 0;
                    while (jsonReader.hasNext()) {
                        cbc ac2 = aky.ac(jsonReader, cgfVar);
                        if (ac2.f12583g == ayj.ox) {
                            i8++;
                        }
                        arrayList2.add(ac2);
                        LongSparseArray longSparseArray5 = longSparseArray3;
                        longSparseArray5.put(ac2.f12581e, ac2);
                        if (i8 > 4) {
                            hbp.b("You have " + i8 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
                        }
                        longSparseArray3 = longSparseArray5;
                    }
                    longSparseArray = longSparseArray3;
                    jsonReader.endArray();
                    bulVar = bulVar2;
                    hashMap = hashMap6;
                    hashMap2 = hashMap7;
                    hashMap3 = hashMap;
                    longSparseArray2 = longSparseArray;
                    i = i3;
                    bulVar2 = bulVar;
                    arrayList3 = arrayList;
                    hashMap4 = hashMap2;
                    h = f5;
                    break;
                case 2:
                    arrayList = arrayList3;
                    try {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String nextName4 = jsonReader.nextName();
                            int hashCode2 = nextName4.hashCode();
                            if (hashCode2 == i4) {
                                if (nextName4.equals("el")) {
                                    c5 = 1;
                                    if (c5 != 0) {
                                    }
                                }
                                c5 = 65535;
                                if (c5 != 0) {
                                }
                            } else if (hashCode2 != 107027) {
                                if (hashCode2 == 3237004 && nextName4.equals("inel")) {
                                    c5 = 0;
                                    if (c5 != 0) {
                                        bulVar2.f12229b = new int[][]{new int[]{-1, -1}};
                                        jsonReader.beginArray();
                                        if (jsonReader.hasNext()) {
                                            jsonReader.beginArray();
                                            for (int i9 = 0; i9 < 2; i9++) {
                                                if (jsonReader.hasNext()) {
                                                    bulVar2.f12229b[0][i9] = jsonReader.nextInt();
                                                }
                                            }
                                            jsonReader.endArray();
                                        }
                                        jsonReader.endArray();
                                        i4 = 3239;
                                    } else if (c5 == 1) {
                                        bulVar2.f12228a = jsonReader.nextString();
                                    } else if (c5 != 2) {
                                        jsonReader.skipValue();
                                    } else {
                                        bulVar2.f12230c = l(jsonReader);
                                    }
                                }
                                c5 = 65535;
                                if (c5 != 0) {
                                }
                            } else {
                                if (nextName4.equals("lel")) {
                                    c5 = 2;
                                    if (c5 != 0) {
                                    }
                                }
                                c5 = 65535;
                                if (c5 != 0) {
                                }
                            }
                        }
                        jsonReader.endObject();
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    hashMap = hashMap6;
                    hashMap2 = hashMap7;
                    longSparseArray = longSparseArray3;
                    bulVar = bulVar2;
                    hashMap3 = hashMap;
                    longSparseArray2 = longSparseArray;
                    i = i3;
                    bulVar2 = bulVar;
                    arrayList3 = arrayList;
                    hashMap4 = hashMap2;
                    h = f5;
                    break;
                case 3:
                    i2 = jsonReader.nextInt();
                    h = f5;
                    i = i3;
                    hashMap3 = hashMap6;
                    hashMap4 = hashMap7;
                    longSparseArray2 = longSparseArray3;
                    break;
                case 4:
                    arrayList = arrayList3;
                    String[] split = jsonReader.nextString().split("\\.");
                    int parseInt = Integer.parseInt(split[0]);
                    int parseInt2 = Integer.parseInt(split[1]);
                    int parseInt3 = Integer.parseInt(split[2]);
                    if (parseInt < 4 || (parseInt <= 4 && (parseInt2 < 4 || (parseInt2 <= 4 && parseInt3 < 0)))) {
                        cgfVar.t("Lottie only supports bodymovin >= 4.4.0");
                    }
                    hashMap = hashMap6;
                    hashMap2 = hashMap7;
                    longSparseArray = longSparseArray3;
                    bulVar = bulVar2;
                    hashMap3 = hashMap;
                    longSparseArray2 = longSparseArray;
                    i = i3;
                    bulVar2 = bulVar;
                    arrayList3 = arrayList;
                    hashMap4 = hashMap2;
                    h = f5;
                    break;
                case 5:
                    i = jsonReader.nextInt();
                    h = f5;
                    hashMap3 = hashMap6;
                    hashMap4 = hashMap7;
                    longSparseArray2 = longSparseArray3;
                    break;
                case 6:
                    str5 = jsonReader.nextString();
                    h = f5;
                    i = i3;
                    hashMap3 = hashMap6;
                    hashMap4 = hashMap7;
                    longSparseArray2 = longSparseArray3;
                    break;
                case 7:
                    f4 = (float) jsonReader.nextDouble();
                    h = f5;
                    i = i3;
                    hashMap3 = hashMap6;
                    hashMap4 = hashMap7;
                    longSparseArray2 = longSparseArray3;
                    break;
                case '\b':
                    arrayList = arrayList3;
                    try {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String nextName5 = jsonReader.nextName();
                            int hashCode3 = nextName5.hashCode();
                            if (hashCode3 == 3139) {
                                if (nextName5.equals("be")) {
                                    c6 = 1;
                                    if (c6 != 0) {
                                    }
                                }
                                c6 = 65535;
                                if (c6 != 0) {
                                }
                            } else if (hashCode3 == 3232) {
                                if (nextName5.equals("ee")) {
                                    c6 = 2;
                                    if (c6 != 0) {
                                    }
                                }
                                c6 = 65535;
                                if (c6 != 0) {
                                }
                            } else if (hashCode3 == 3571) {
                                if (nextName5.equals("pc")) {
                                    c6 = 3;
                                    if (c6 != 0) {
                                    }
                                }
                                c6 = 65535;
                                if (c6 != 0) {
                                }
                            } else if (hashCode3 != 3666) {
                                if (hashCode3 == 98713 && nextName5.equals("cpf")) {
                                    c6 = 4;
                                    if (c6 != 0) {
                                        dacVar.f13841c = jsonReader.nextInt();
                                    } else if (c6 == 1) {
                                        dacVar.f13843e = bc(jsonReader);
                                    } else if (c6 == 2) {
                                        dacVar.f13844f = bc(jsonReader);
                                    } else if (c6 == 3) {
                                        dacVar.f13839a = jsonReader.nextInt();
                                    } else if (c6 != 4) {
                                        jsonReader.skipValue();
                                    } else {
                                        e(jsonReader, dacVar);
                                    }
                                }
                                c6 = 65535;
                                if (c6 != 0) {
                                }
                            } else {
                                if (nextName5.equals("se")) {
                                    c6 = 0;
                                    if (c6 != 0) {
                                    }
                                }
                                c6 = 65535;
                                if (c6 != 0) {
                                }
                            }
                        }
                        jsonReader.endObject();
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                    hashMap = hashMap6;
                    hashMap2 = hashMap7;
                    longSparseArray = longSparseArray3;
                    bulVar = bulVar2;
                    hashMap3 = hashMap;
                    longSparseArray2 = longSparseArray;
                    i = i3;
                    bulVar2 = bulVar;
                    arrayList3 = arrayList;
                    hashMap4 = hashMap2;
                    h = f5;
                    break;
                case '\t':
                    f2 = (float) jsonReader.nextDouble();
                    h = f5;
                    i = i3;
                    hashMap3 = hashMap6;
                    hashMap4 = hashMap7;
                    longSparseArray2 = longSparseArray3;
                    break;
                case '\n':
                    f3 = ((float) jsonReader.nextDouble()) - 0.01f;
                    h = f5;
                    i = i3;
                    hashMap3 = hashMap6;
                    hashMap4 = hashMap7;
                    longSparseArray2 = longSparseArray3;
                    break;
                case 11:
                    arrayList = arrayList3;
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        ArrayList arrayList7 = new ArrayList();
                        jsonReader.beginObject();
                        double d2 = 0.0d;
                        char c13 = 0;
                        String str21 = null;
                        String str22 = null;
                        while (jsonReader.hasNext()) {
                            String nextName6 = jsonReader.nextName();
                            nextName6.getClass();
                            switch (nextName6.hashCode()) {
                                case -1866931350:
                                    if (nextName6.equals("fFamily")) {
                                        c7 = 0;
                                        break;
                                    }
                                    c7 = 65535;
                                    break;
                                case 119:
                                    if (nextName6.equals("w")) {
                                        c7 = 1;
                                        break;
                                    }
                                    c7 = 65535;
                                    break;
                                case 3173:
                                    if (nextName6.equals("ch")) {
                                        c7 = 2;
                                        break;
                                    }
                                    c7 = 65535;
                                    break;
                                case 3076010:
                                    if (nextName6.equals("data")) {
                                        c7 = 3;
                                        break;
                                    }
                                    c7 = 65535;
                                    break;
                                case 3530753:
                                    if (nextName6.equals("size")) {
                                        c7 = 4;
                                        break;
                                    }
                                    c7 = 65535;
                                    break;
                                case 109780401:
                                    if (nextName6.equals("style")) {
                                        c7 = 5;
                                        break;
                                    }
                                    c7 = 65535;
                                    break;
                                default:
                                    c7 = 65535;
                                    break;
                            }
                            switch (c7) {
                                case 0:
                                    str22 = jsonReader.nextString();
                                    break;
                                case 1:
                                    d2 = jsonReader.nextDouble();
                                    break;
                                case 2:
                                    c13 = jsonReader.nextString().charAt(0);
                                    break;
                                case 3:
                                    jsonReader.beginObject();
                                    while (jsonReader.hasNext()) {
                                        if ("shapes".equals(jsonReader.nextName())) {
                                            jsonReader.beginArray();
                                            while (jsonReader.hasNext()) {
                                                arrayList7.add((ewz) baf.z(jsonReader, cgfVar));
                                            }
                                            jsonReader.endArray();
                                        } else {
                                            jsonReader.skipValue();
                                        }
                                    }
                                    jsonReader.endObject();
                                    break;
                                case 4:
                                    jsonReader.nextDouble();
                                    break;
                                case 5:
                                    str21 = jsonReader.nextString();
                                    break;
                                default:
                                    jsonReader.skipValue();
                                    break;
                            }
                        }
                        jsonReader.endObject();
                        fki fkiVar = new fki(arrayList7, c13, d2, str21, str22);
                        sparseArray.put(fkiVar.hashCode(), fkiVar);
                    }
                    jsonReader.endArray();
                    hashMap = hashMap6;
                    hashMap2 = hashMap7;
                    longSparseArray = longSparseArray3;
                    bulVar = bulVar2;
                    hashMap3 = hashMap;
                    longSparseArray2 = longSparseArray;
                    i = i3;
                    bulVar2 = bulVar;
                    arrayList3 = arrayList;
                    hashMap4 = hashMap2;
                    h = f5;
                    break;
                case '\f':
                    arrayList = arrayList3;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName7 = jsonReader.nextName();
                        nextName7.getClass();
                        if (nextName7.equals("list")) {
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                jsonReader.beginObject();
                                String str23 = null;
                                String str24 = null;
                                String str25 = null;
                                while (jsonReader.hasNext()) {
                                    String nextName8 = jsonReader.nextName();
                                    nextName8.getClass();
                                    switch (nextName8.hashCode()) {
                                        case -1866931350:
                                            if (nextName8.equals("fFamily")) {
                                                c8 = 0;
                                                break;
                                            }
                                            c8 = 65535;
                                            break;
                                        case -1408684838:
                                            if (nextName8.equals("ascent")) {
                                                c8 = 1;
                                                break;
                                            }
                                            c8 = 65535;
                                            break;
                                        case -1294566165:
                                            if (nextName8.equals("fStyle")) {
                                                c8 = 2;
                                                break;
                                            }
                                            c8 = 65535;
                                            break;
                                        case 96619537:
                                            if (nextName8.equals("fName")) {
                                                c8 = 3;
                                                break;
                                            }
                                            c8 = 65535;
                                            break;
                                        default:
                                            c8 = 65535;
                                            break;
                                    }
                                    switch (c8) {
                                        case 0:
                                            str23 = jsonReader.nextString();
                                            break;
                                        case 1:
                                            jsonReader.nextDouble();
                                            break;
                                        case 2:
                                            str25 = jsonReader.nextString();
                                            break;
                                        case 3:
                                            str24 = jsonReader.nextString();
                                            break;
                                        default:
                                            jsonReader.skipValue();
                                            break;
                                    }
                                }
                                jsonReader.endObject();
                                hashMap5.put(str24, new glv(str23, str24, str25));
                            }
                            jsonReader.endArray();
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    hashMap = hashMap6;
                    hashMap2 = hashMap7;
                    longSparseArray = longSparseArray3;
                    bulVar = bulVar2;
                    hashMap3 = hashMap;
                    longSparseArray2 = longSparseArray;
                    i = i3;
                    bulVar2 = bulVar;
                    arrayList3 = arrayList;
                    hashMap4 = hashMap2;
                    h = f5;
                    break;
                case '\r':
                    try {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String nextName9 = jsonReader.nextName();
                            int hashCode4 = nextName9.hashCode();
                            arrayList = arrayList3;
                            if (hashCode4 == 3123) {
                                if (nextName9.equals("at")) {
                                    c10 = 3;
                                    switch (c10) {
                                    }
                                    arrayList3 = arrayList;
                                }
                                c10 = 65535;
                                switch (c10) {
                                }
                                arrayList3 = arrayList;
                            } else if (hashCode4 == 3239) {
                                if (nextName9.equals("el")) {
                                    c10 = 5;
                                    switch (c10) {
                                    }
                                    arrayList3 = arrayList;
                                }
                                c10 = 65535;
                                switch (c10) {
                                }
                                arrayList3 = arrayList;
                            } else if (hashCode4 == 3355) {
                                if (nextName9.equals(TTDownloadField.TT_ID)) {
                                    c10 = 1;
                                    switch (c10) {
                                    }
                                    arrayList3 = arrayList;
                                }
                                c10 = 65535;
                                switch (c10) {
                                }
                                arrayList3 = arrayList;
                            } else if (hashCode4 == 3418) {
                                if (nextName9.equals("ke")) {
                                    c10 = 0;
                                    switch (c10) {
                                    }
                                    arrayList3 = arrayList;
                                }
                                c10 = 65535;
                                switch (c10) {
                                }
                                arrayList3 = arrayList;
                            } else if (hashCode4 == 3704) {
                                if (nextName9.equals("tl")) {
                                    c10 = 2;
                                    switch (c10) {
                                    }
                                    arrayList3 = arrayList;
                                }
                                c10 = 65535;
                                switch (c10) {
                                }
                                arrayList3 = arrayList;
                            } else if (hashCode4 != 107027) {
                                if (hashCode4 == 3237004) {
                                    try {
                                        if (nextName9.equals("inel")) {
                                            c10 = 4;
                                            switch (c10) {
                                                case 0:
                                                    gnbVar.k = jsonReader.nextInt();
                                                    break;
                                                case 1:
                                                    gnbVar.m = jsonReader.nextString();
                                                    break;
                                                case 2:
                                                    gnbVar.n = jsonReader.nextString();
                                                    break;
                                                case 3:
                                                    gnbVar.i = jsonReader.nextString();
                                                    break;
                                                case 4:
                                                    gnbVar.j = new int[]{-1, -1};
                                                    jsonReader.beginArray();
                                                    for (int i10 = 0; i10 < 2; i10++) {
                                                        if (jsonReader.hasNext()) {
                                                            ((int[]) gnbVar.j)[i10] = jsonReader.nextInt();
                                                        }
                                                    }
                                                    jsonReader.endArray();
                                                    break;
                                                case 5:
                                                    gnbVar.l = jsonReader.nextString();
                                                    break;
                                                case 6:
                                                    gnbVar.o = l(jsonReader);
                                                    break;
                                                default:
                                                    jsonReader.skipValue();
                                                    break;
                                            }
                                            arrayList3 = arrayList;
                                        }
                                    } catch (Exception e7) {
                                        e = e7;
                                        e.printStackTrace();
                                        hashMap = hashMap6;
                                        hashMap2 = hashMap7;
                                        longSparseArray = longSparseArray3;
                                        bulVar = bulVar2;
                                        hashMap3 = hashMap;
                                        longSparseArray2 = longSparseArray;
                                        i = i3;
                                        bulVar2 = bulVar;
                                        arrayList3 = arrayList;
                                        hashMap4 = hashMap2;
                                        h = f5;
                                    }
                                }
                                c10 = 65535;
                                switch (c10) {
                                }
                                arrayList3 = arrayList;
                            } else {
                                if (nextName9.equals("lel")) {
                                    c10 = 6;
                                    switch (c10) {
                                    }
                                    arrayList3 = arrayList;
                                }
                                c10 = 65535;
                                switch (c10) {
                                }
                                arrayList3 = arrayList;
                            }
                        }
                        arrayList = arrayList3;
                        jsonReader.endObject();
                    } catch (Exception e8) {
                        e = e8;
                        arrayList = arrayList3;
                    }
                    hashMap = hashMap6;
                    hashMap2 = hashMap7;
                    longSparseArray = longSparseArray3;
                    bulVar = bulVar2;
                    hashMap3 = hashMap;
                    longSparseArray2 = longSparseArray;
                    i = i3;
                    bulVar2 = bulVar;
                    arrayList3 = arrayList;
                    hashMap4 = hashMap2;
                    h = f5;
                case 14:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        String str26 = null;
                        float f6 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        float f7 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        while (jsonReader.hasNext()) {
                            String nextName10 = jsonReader.nextName();
                            nextName10.getClass();
                            switch (nextName10.hashCode()) {
                                case 3178:
                                    if (nextName10.equals("cm")) {
                                        c9 = 0;
                                        break;
                                    }
                                    c9 = 65535;
                                    break;
                                case 3214:
                                    if (nextName10.equals("dr")) {
                                        c9 = 1;
                                        break;
                                    }
                                    c9 = 65535;
                                    break;
                                case 3705:
                                    if (nextName10.equals("tm")) {
                                        c9 = 2;
                                        break;
                                    }
                                    c9 = 65535;
                                    break;
                                default:
                                    c9 = 65535;
                                    break;
                            }
                            switch (c9) {
                                case 0:
                                    str26 = jsonReader.nextString();
                                    break;
                                case 1:
                                    f7 = (float) jsonReader.nextDouble();
                                    break;
                                case 2:
                                    f6 = (float) jsonReader.nextDouble();
                                    break;
                                default:
                                    jsonReader.skipValue();
                                    break;
                            }
                        }
                        jsonReader.endObject();
                        arrayList3.add(new ewh(str26, f6, f7));
                    }
                    jsonReader.endArray();
                    arrayList = arrayList3;
                    hashMap = hashMap6;
                    hashMap2 = hashMap7;
                    longSparseArray = longSparseArray3;
                    bulVar = bulVar2;
                    hashMap3 = hashMap;
                    longSparseArray2 = longSparseArray;
                    i = i3;
                    bulVar2 = bulVar;
                    arrayList3 = arrayList;
                    hashMap4 = hashMap2;
                    h = f5;
                    break;
                default:
                    jsonReader.skipValue();
                    arrayList = arrayList3;
                    hashMap = hashMap6;
                    hashMap2 = hashMap7;
                    longSparseArray = longSparseArray3;
                    bulVar = bulVar2;
                    hashMap3 = hashMap;
                    longSparseArray2 = longSparseArray;
                    i = i3;
                    bulVar2 = bulVar;
                    arrayList3 = arrayList;
                    hashMap4 = hashMap2;
                    h = f5;
                    break;
            }
        }
        float f8 = h;
        jsonReader.endObject();
        cgfVar.o = new Rect(0, 0, (int) (i * f8), (int) (i2 * f8));
        cgfVar.f12824b = f2;
        cgfVar.f12828f = f3;
        cgfVar.l = f4;
        cgfVar.m = arrayList2;
        cgfVar.f12823a = longSparseArray2;
        cgfVar.q = hashMap3;
        cgfVar.f12827e = hashMap4;
        cgfVar.r = sparseArray;
        cgfVar.f12829g = hashMap5;
        cgfVar.i = arrayList3;
        cgfVar.k = gnbVar;
        cgfVar.p = str5;
        cgfVar.s = dacVar;
        cgfVar.j = bulVar2;
        return cgfVar;
    }

    public static boolean s(File file, InputStream inputStream) {
        FileOutputStream fileOutputStream;
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, false);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    ax(fileOutputStream);
                    StrictMode.setThreadPolicy(allowThreadDiskWrites);
                    return true;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
            ax(fileOutputStream2);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            ax(fileOutputStream2);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            throw th;
        }
    }

    public static String t(String str) {
        List list;
        bff.p(str, "<this>");
        if (dcv.bo("|")) {
            throw new IllegalArgumentException("marginPrefix must be non-blank string.");
        }
        fzy fzyVar = new fzy(str);
        if (fzyVar.hasNext()) {
            Object next = fzyVar.next();
            if (fzyVar.hasNext()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(next);
                while (fzyVar.hasNext()) {
                    arrayList.add(fzyVar.next());
                }
                list = arrayList;
            } else {
                list = cro.r(next);
            }
        } else {
            list = fai.f16469a;
        }
        int length = str.length();
        list.size();
        int bd = grj.bd(list);
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            String str2 = null;
            if (i < 0) {
                grj.m();
                throw null;
            }
            String str3 = (String) obj;
            if ((i != 0 && i != bd) || !dcv.bo(str3)) {
                int length2 = str3.length();
                int i3 = 0;
                while (true) {
                    if (i3 >= length2) {
                        i3 = -1;
                        break;
                    }
                    if (!egh.bh(str3.charAt(i3))) {
                        break;
                    }
                    i3++;
                }
                if (i3 != -1 && dmc.bz(str3, i3, "|", false)) {
                    str2 = str3.substring("|".length() + i3);
                    bff.e(str2, "substring(...)");
                }
                if (str2 == null) {
                    str2 = str3;
                }
            }
            if (str2 != null) {
                arrayList2.add(str2);
            }
            i = i2;
        }
        StringBuilder sb = new StringBuilder(length);
        gsv.bk(arrayList2, sb, "\n", "", "", "...", null);
        return sb.toString();
    }

    public static void u(StringBuilder sb, Object obj, and andVar) {
        if (andVar != null) {
            sb.append((CharSequence) andVar.invoke(obj));
            return;
        }
        if (obj == null ? true : obj instanceof CharSequence) {
            sb.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            sb.append(((Character) obj).charValue());
        } else {
            sb.append((CharSequence) obj.toString());
        }
    }

    public static cih v(amj amjVar) {
        if (amjVar instanceof cih) {
            return (cih) amjVar;
        }
        if (amjVar instanceof foe) {
            return null;
        }
        if (!(amjVar instanceof cfm)) {
            throw new gck(n(amjVar));
        }
        List x = ((cfm) amjVar).x();
        if (x.isEmpty()) {
            return null;
        }
        return v((amj) awf.q(1, x));
    }

    public static boolean w(fza fzaVar, amj amjVar) {
        if (fzaVar == amjVar) {
            return true;
        }
        if (amjVar instanceof fza) {
            return ffb.ac(fzaVar, (fza) amjVar);
        }
        if (amjVar instanceof cih) {
            return false;
        }
        if (!(amjVar instanceof cfm)) {
            throw new gck(n(amjVar));
        }
        Iterator it = ((cfm) amjVar).x().iterator();
        while (it.hasNext()) {
            if (w(fzaVar, (amj) it.next())) {
                return true;
            }
        }
        return false;
    }

    public static void x(bgm bgmVar, SQLiteDatabase sQLiteDatabase) {
        if (bgmVar == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        dvb dvbVar = bgmVar.f11520g;
        File file = new File(sQLiteDatabase.getPath());
        if (!file.setReadable(false, false)) {
            dvbVar.h("Failed to turn off database read permission");
        }
        if (!file.setWritable(false, false)) {
            dvbVar.h("Failed to turn off database write permission");
        }
        if (!file.setReadable(true, true)) {
            dvbVar.h("Failed to turn on database read permission for owner");
        }
        if (file.setWritable(true, true)) {
            return;
        }
        dvbVar.h("Failed to turn on database write permission for owner");
    }

    public static boolean y(amj amjVar) {
        if (amjVar instanceof cih) {
            return ffb.ah((cih) amjVar);
        }
        if (!(amjVar instanceof foe)) {
            if (!(amjVar instanceof cfm)) {
                throw new gck(n(amjVar));
            }
            amj amjVar2 = (amj) evh.o(((cfm) amjVar).x());
            return amjVar2 != null && y(amjVar2);
        }
        for (amj amjVar3 : ((foe) amjVar).e()) {
            if (amjVar3 == null || !y(amjVar3)) {
                return false;
            }
        }
        return true;
    }

    public static boolean z(amj amjVar) {
        if (amjVar == null) {
            return false;
        }
        if (amjVar instanceof cih) {
            for (eek eekVar : ((cih) amjVar).c()) {
                if (!eekVar.l.g(csv.DONT_GENERATE)) {
                }
            }
            return false;
        }
        if (amjVar instanceof cab) {
            return true;
        }
        if (!(amjVar instanceof cfm)) {
            throw new gck(n(amjVar));
        }
        Iterator it = ((cfm) amjVar).x().iterator();
        while (it.hasNext()) {
            if (z((amj) it.next())) {
            }
        }
        return false;
        return true;
    }
}
