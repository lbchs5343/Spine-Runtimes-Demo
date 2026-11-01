package g;

import android.app.Activity;
import android.app.AppOpsManager;
import android.app.PendingIntent;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.graphics.Path;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import android.os.Trace;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import android.webkit.MimeTypeMap;
import android.widget.TextView;
import androidx.core.content.FileProvider;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import j$.util.List;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.logging.Logger;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class baf implements byr {
    public static Method k;
    public static Method m;
    public static Method o;
    public static boolean p;
    public static Method r;
    public static long t;
    public static final hy q = new hy("UNDEFINED", 1);
    public static final hy s = new hy("REUSABLE_CLAIMED", 1);
    public static final Object n = new Object();

    public static String aa(String str) {
        str.getClass();
        switch (str) {
            case "c.d.ab":
                return "text_copy";
            case "c.d.cp":
                return "color_picker";
            case "c.d.li":
                return "layout_inspector";
            case "c.d.a":
                return "apk_puller";
            case "c.d.b":
                return "apps";
            case "c.d.c":
                return "dont_keep_activities";
            case "c.d.d":
                return "force_gpu_rendering";
            case "c.d.e":
                return "gpu_view_update";
            case "c.d.f":
                return "layout_bounds";
            case "c.d.g":
                return "manifest";
            case "c.d.h":
                return "overdraw";
            case "c.d.i":
                return "pointer_location";
            case "c.d.j":
                return "so_puller";
            case "c.d.k":
                return "strict_mode";
            case "c.d.l":
                return "surface_update";
            case "c.d.m":
                return "track_gpu_frame";
            case "c.d.n":
                return "top_activity";
            case "c.d.o":
                return "decompile";
            case "c.d.p":
                return "codekk_op";
            default:
                return str;
        }
    }

    public static int ab(dxm dxmVar, int i, byte[] bArr, int i2, int i3, gmb gmbVar, dsc dscVar) {
        fsu zze = dxmVar.zze();
        dxm dxmVar2 = dxmVar;
        byte[] bArr2 = bArr;
        int i4 = i3;
        dsc dscVar2 = dscVar;
        int bp = bp(zze, dxmVar2, bArr2, i2, i4, dscVar2);
        dxmVar2.aa(zze);
        dscVar2.f14696d = zze;
        gmbVar.add(zze);
        while (bp < i4) {
            dsc dscVar3 = dscVar2;
            int i5 = i4;
            int bb = bb(bArr2, bp, dscVar3);
            if (i != dscVar3.f14694b) {
                break;
            }
            byte[] bArr3 = bArr2;
            dxm dxmVar3 = dxmVar2;
            fsu zze2 = dxmVar3.zze();
            bp = bp(zze2, dxmVar3, bArr3, bb, i5, dscVar3);
            dxmVar2 = dxmVar3;
            bArr2 = bArr3;
            i4 = i5;
            dscVar2 = dscVar3;
            dxmVar2.aa(zze2);
            dscVar2.f14696d = zze2;
            gmbVar.add(zze2);
        }
        return bp;
    }

    public static int ac(byte[] bArr, int i, dsc dscVar) {
        int bb = bb(bArr, i, dscVar);
        int i2 = dscVar.f14694b;
        if (i2 < 0) {
            throw new fba("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i2 > bArr.length - bb) {
            throw new fba("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        if (i2 == 0) {
            dscVar.f14696d = aki.f10381a;
            return bb;
        }
        dscVar.f14696d = aki.c(bb, bArr, i2);
        return bb + i2;
    }

    public static final void ad(Object obj, bdp bdpVar) {
        if (!(bdpVar instanceof sk)) {
            bdpVar._z(obj);
            return;
        }
        sk skVar = (sk) bdpVar;
        cpk cpkVar = skVar.f19979c;
        Throwable a2 = sl.a(obj);
        Object whVar = a2 == null ? obj : new wh(a2, false);
        w wVar = skVar.f19980d;
        if (cpkVar.w(wVar.getContext())) {
            skVar.f19981e = whVar;
            skVar.k = 1;
            cpkVar.i(wVar.getContext(), skVar);
            return;
        }
        bkg b2 = fla.b();
        if (b2.l >= 4294967296L) {
            skVar.f19981e = whVar;
            skVar.k = 1;
            b2.q(skVar);
            return;
        }
        b2.s(true);
        try {
            dta dtaVar = (dta) wVar.getContext()._x(dwm.o);
            if (dtaVar == null || dtaVar.x()) {
                Object obj2 = skVar.f19978b;
                boj context = wVar.getContext();
                Object ad = gs.ad(context, obj2);
                aoa bb = ad != gs.f18671c ? eyt.bb(wVar, context, ad) : null;
                try {
                    wVar._z(obj);
                } finally {
                    if (bb == null || bb._bh()) {
                        gs.av(context, ad);
                    }
                }
            } else {
                CancellationException ar = ((fyw) dtaVar).ar();
                skVar.i(whVar, ar);
                skVar._z(eg.i(ar));
            }
            while (b2.r()) {
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public static int ae(int i, byte[] bArr, int i2, int i3, gmb gmbVar, dsc dscVar) {
        gwj gwjVar = (gwj) gmbVar;
        int bb = bb(bArr, i2, dscVar);
        gwjVar.i(dscVar.f14694b);
        while (bb < i3) {
            int bb2 = bb(bArr, bb, dscVar);
            if (i != dscVar.f14694b) {
                break;
            }
            bb = bb(bArr, bb2, dscVar);
            gwjVar.i(dscVar.f14694b);
        }
        return bb;
    }

    public static final Object af(long j, avu avuVar) {
        if (j > 0) {
            gsn gsnVar = new gsn(1, awt.ab(avuVar));
            gsnVar.ac();
            if (j < Long.MAX_VALUE) {
                erz _x = gsnVar.o._x(bmr.j);
                fjt fjtVar = _x instanceof fjt ? (fjt) _x : null;
                if (fjtVar == null) {
                    fjtVar = grp.f18652a;
                }
                fjtVar.d(j, gsnVar);
            }
            Object z = gsnVar.z();
            if (z == cxr.COROUTINE_SUSPENDED) {
                return z;
            }
        }
        return dgi.f14134a;
    }

    public static void ag(Activity activity, ert ertVar, String str) {
        int i = ertVar.f16055d;
        String z = ertVar.z(activity);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("icon", i);
        bundle.putString(abn.EXTRA_TITLE, z);
        bundle.putString("message", str);
        bundle.putBoolean("showa", fml.e(activity));
        kj.t(activity, new flw(), bundle, false);
    }

    public static final boolean ah(AssertionError assertionError) {
        Logger logger = aro.f10725a;
        if (assertionError.getCause() != null) {
            String message = assertionError.getMessage();
            if (message != null ? dcv.bq(message, "getsockname failed") : false) {
                return true;
            }
        }
        return false;
    }

    public static final deb ai(cpv cpvVar) {
        bff.p(cpvVar, "<this>");
        return new deb(cpvVar);
    }

    public static int aj(int i, byte[] bArr, int i2, dsc dscVar) {
        byte b2 = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE;
        if (b2 >= 0) {
            dscVar.f14694b = i4 | (b2 << 7);
            return i3;
        }
        int i5 = i4 | ((b2 & Byte.MAX_VALUE) << 7);
        int i6 = i2 + 2;
        byte b3 = bArr[i3];
        if (b3 >= 0) {
            dscVar.f14694b = i5 | (b3 << 14);
            return i6;
        }
        int i7 = i5 | ((b3 & Byte.MAX_VALUE) << 14);
        int i8 = i2 + 3;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            dscVar.f14694b = i7 | (b4 << 21);
            return i8;
        }
        int i9 = i7 | ((b4 & Byte.MAX_VALUE) << 21);
        int i10 = i2 + 4;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            dscVar.f14694b = i9 | (b5 << 28);
            return i10;
        }
        int i11 = i9 | ((b5 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                dscVar.f14694b = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static String ak(String str, String str2) {
        String n2 = buj.n(str);
        if ("dex".equalsIgnoreCase(n2) || "apk".equalsIgnoreCase(n2)) {
            n2 = "zip";
        } else if ("properties".equalsIgnoreCase(n2)) {
            return "text/plain";
        }
        String mimeTypeFromExtension = n2 != null ? MimeTypeMap.getSingleton().getMimeTypeFromExtension(n2) : null;
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : str2;
    }

    public static fe al(hcc hccVar, cpk cpkVar, dwt dwtVar, bto btoVar, int i) {
        boj bojVar = cpkVar;
        if ((i & 1) != 0) {
            bojVar = cgq.f12850a;
        }
        if ((i & 2) != 0) {
            dwtVar = dwt.DEFAULT;
        }
        boj ah = eyt.ah(hccVar, bojVar);
        dwtVar.getClass();
        fe ckuVar = dwtVar == dwt.LAZY ? new cku(ah, btoVar) : new fe(ah, true);
        ckuVar.s(dwtVar, ckuVar, btoVar);
        return ckuVar;
    }

    public static boolean am() {
        if (Build.VERSION.SDK_INT >= 29) {
            return frg.c();
        }
        try {
            if (m == null) {
                t = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                m = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) m.invoke(null, Long.valueOf(t))).booleanValue();
        } catch (Exception e2) {
            be(e2);
            return false;
        }
    }

    public static final Object an(erz erzVar, bto btoVar, w wVar) {
        gpe gpeVar;
        boj context = wVar.getContext();
        boj _y = !((Boolean) erzVar.c(Boolean.FALSE, gak.f17797b)).booleanValue() ? context._y(erzVar) : eyt.bi(context, erzVar, false);
        kj.h(_y);
        if (_y == context) {
            azc azcVar = new azc(wVar, _y);
            return dzm.ad(azcVar, azcVar, btoVar);
        }
        bmr bmrVar = bmr.j;
        if (bff.n(_y._x(bmrVar), context._x(bmrVar))) {
            aoa aoaVar = new aoa(wVar, _y);
            boj bojVar = aoaVar.o;
            Object ad = gs.ad(bojVar, null);
            try {
                return dzm.ad(aoaVar, aoaVar, btoVar);
            } finally {
                gs.av(bojVar, ad);
            }
        }
        djk djkVar = new djk(wVar, _y);
        kj.y(btoVar, djkVar, djkVar);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = djk.h;
        do {
            int i = atomicIntegerFieldUpdater.get(djkVar);
            if (i != 0) {
                if (i != 2) {
                    throw new IllegalStateException("Already suspended");
                }
                Object ah = djkVar.ah();
                xk xkVar = ah instanceof xk ? (xk) ah : null;
                if (xkVar != null && (gpeVar = xkVar.f20295a) != null) {
                    ah = gpeVar;
                }
                if (ah instanceof wh) {
                    throw ((wh) ah).f20211c;
                }
                return ah;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(djkVar, 0, 1));
        return cxr.COROUTINE_SUSPENDED;
    }

    public static int ao(Object obj, dxm dxmVar, byte[] bArr, int i, int i2, int i3, dsc dscVar) {
        dei deiVar = (dei) dxmVar;
        int i4 = dscVar.f14693a + 1;
        dscVar.f14693a = i4;
        if (i4 >= 100) {
            throw new fba("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int ae = deiVar.ae(obj, bArr, i, i2, i3, dscVar);
        dscVar.f14693a--;
        dscVar.f14696d = obj;
        return ae;
    }

    public static boolean ap(Context context, String str, boolean z) {
        boolean z2;
        Uri parse = Uri.parse(str);
        try {
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            if (z) {
                intent.setPackage(context.getPackageName());
            }
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            intent.setDataAndType(parse, "file/*");
            context.startActivity(intent);
            z2 = true;
        } catch (Exception unused) {
            z2 = false;
        }
        if (!z2) {
            try {
                Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.setDataAndType(parse, "resource/folder");
                if (intent2.resolveActivityInfo(context.getPackageManager(), 0) != null) {
                    context.startActivity(intent2);
                    z2 = true;
                }
            } catch (Exception unused2) {
            }
        }
        if (!z2) {
            Intent intent3 = new Intent("android.intent.action.GET_CONTENT");
            intent3.addFlags(C.ENCODING_PCM_MU_LAW);
            intent3.setDataAndType(bf(context, new File(str).getParentFile()), "file/*");
            fgj.e().h(context, Intent.createChooser(intent3, context.getString(R.string.open_file)), true);
        }
        return z2;
    }

    public static String aq() {
        String[] split;
        dsg bb = ffb.bb(new String[]{"getprop"}, false, 1000L);
        String str = (String) bb.f14704a;
        if (bb.f14707d != 0 && TextUtils.isEmpty(str)) {
            return (String) bb.f14705b;
        }
        StringBuilder sb = new StringBuilder();
        String[] split2 = str.replaceAll("[|\\[|\\]]", "").split("\n");
        Arrays.sort(split2, String.CASE_INSENSITIVE_ORDER);
        for (String str2 : split2) {
            if (!TextUtils.isEmpty(str2) && (split = str2.trim().split(":")) != null && split.length == 2) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(split[0].trim().replaceAll("^\\[|\\]$", "") + ": " + split[1].trim().replaceAll("^\\[|\\]$", ""));
            }
        }
        return sb.toString();
    }

    public static int ar(byte[] bArr, int i, dsc dscVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            dscVar.f14695c = j;
            return i2;
        }
        int i3 = i + 2;
        byte b2 = bArr[i2];
        long j2 = (j & 127) | ((b2 & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b2 < 0) {
            int i5 = i3 + 1;
            i4 += 7;
            j2 |= (r10 & Byte.MAX_VALUE) << i4;
            b2 = bArr[i3];
            i3 = i5;
        }
        dscVar.f14695c = j2;
        return i3;
    }

    public static String as(String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            return "TRuntime.".concat(str);
        }
        String concat = "TRuntime.".concat(str);
        return concat.length() > 23 ? concat.substring(0, 23) : concat;
    }

    public static final ExecutorService at(boolean z) {
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new nb(z));
        bff.e(newFixedThreadPool, "newFixedThreadPool(\n    …)),\n        factory\n    )");
        return newFixedThreadPool;
    }

    public static final dix au(Socket socket) {
        Logger logger = aro.f10725a;
        gfm gfmVar = new gfm(socket);
        InputStream inputStream = socket.getInputStream();
        bff.e(inputStream, "getInputStream(...)");
        return new dix(gfmVar, new dix(inputStream, gfmVar));
    }

    public static String av(Context context, Uri uri) {
        Throwable th;
        Cursor cursor;
        Cursor cursor2 = null;
        r1 = null;
        String string = null;
        try {
            cursor = context.getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        string = cursor.getString(cursor.getColumnIndexOrThrow("_display_name"));
                    }
                } catch (Exception unused) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    cursor2 = cursor;
                    if (cursor2 == null) {
                        throw th;
                    }
                    cursor2.close();
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return string;
        } catch (Exception unused2) {
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static JSONObject aw() {
        StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("thread_number", 1);
        StringBuilder sb = new StringBuilder();
        for (StackTraceElement stackTraceElement : stackTrace) {
            String className = stackTraceElement.getClassName();
            sb.append("  at ");
            sb.append(className);
            sb.append(".");
            sb.append(stackTraceElement.getMethodName());
            sb.append("(");
            sb.append(stackTraceElement.getFileName());
            sb.append(":");
            sb.append(stackTraceElement.getLineNumber());
            sb.append(")\n");
        }
        jSONObject.put("mainStackFromTrace", sb.toString());
        return jSONObject;
    }

    public static void ax(String str, String str2, Object obj) {
        if (Log.isLoggable(as(str), 3)) {
            String.format(str2, obj);
        }
    }

    public static int ay(byte[] bArr, int i, gmb gmbVar, dsc dscVar) {
        gwj gwjVar = (gwj) gmbVar;
        int bb = bb(bArr, i, dscVar);
        int i2 = dscVar.f14694b + bb;
        while (bb < i2) {
            bb = bb(bArr, bb, dscVar);
            gwjVar.i(dscVar.f14694b);
        }
        if (bb == i2) {
            return bb;
        }
        throw new fba("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static int az(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static ghn ba(dlg dlgVar, bto btoVar) {
        dwt dwtVar = dwt.DEFAULT;
        boj ah = eyt.ah(dlgVar, cgq.f12850a);
        dwtVar.getClass();
        ghn ewaVar = dwtVar == dwt.LAZY ? new ewa(ah, btoVar) : new ghn(ah, true);
        ewaVar.s(dwtVar, ewaVar, btoVar);
        return ewaVar;
    }

    public static int bb(byte[] bArr, int i, dsc dscVar) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return aj(b2, bArr, i2, dscVar);
        }
        dscVar.f14694b = b2;
        return i2;
    }

    public static void bc(int i, Object obj) {
        if (obj != null) {
            if (obj instanceof eym) {
                if ((obj instanceof hdx ? ((hdx) obj).h() : obj instanceof cvw ? 0 : obj instanceof and ? 1 : obj instanceof bto ? 2 : obj instanceof bnk ? 3 : obj instanceof dxv ? 4 : obj instanceof dzv ? 6 : -1) == i) {
                    return;
                }
            }
            ClassCastException classCastException = new ClassCastException(awf.i(obj.getClass().getName(), " cannot be cast to ", awf.ac(i, "kotlin.jvm.functions.Function")));
            bff.l(classCastException, baf.class.getName());
            throw classCastException;
        }
    }

    public static void bd(String str, String str2, Exception exc) {
        String as = as(str);
        if (Log.isLoggable(as, 6)) {
            Log.e(as, str2, exc);
        }
    }

    public static void be(Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (!(cause instanceof RuntimeException)) {
                throw new RuntimeException(cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    public static Uri bf(Context context, File file) {
        if (dyd.ar(24)) {
            return Uri.fromFile(file);
        }
        try {
            return FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", file);
        } catch (IllegalArgumentException e2) {
            erl.ac(e2);
            try {
                return FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", file);
            } catch (Exception e3) {
                if (e3 instanceof StringIndexOutOfBoundsException) {
                    gm.e(context, R.string.system_inner_error);
                    erl.ac(e3);
                } else {
                    if (e3.getMessage() == null || !e3.getMessage().contains("Failed to find configured root that contains")) {
                        throw e3;
                    }
                    gm.e(context, R.string.no_permission);
                    erl.ac(e3);
                }
                return null;
            }
        }
    }

    public static void bg(Activity activity, String str, String str2, dds ddsVar) {
        String str3;
        CharSequence e2 = fyt.e(activity, str);
        Bundle bundle = new Bundle();
        bundle.putString(abn.EXTRA_TITLE, activity.getString(R.string.title_request_permission));
        if (fml.e(activity)) {
            str3 = activity.getString(byh.aj(activity) ? R.string.ad_unit_id_app_c : R.string.ad_unit_id_app_g);
        } else {
            str3 = null;
        }
        bundle.putString("adUnitId", eyt.bp(str3));
        bundle.putString("message", eyt.bp(activity.getString(R.string.content_request_permission, e2, str2)));
        bundle.putBoolean("message_is_html", false);
        csx csxVar = new csx(ddsVar, 1);
        String string = activity.getString(R.string.alert_dialog_ok);
        csx csxVar2 = new csx(ddsVar, 0);
        String string2 = activity.getString(R.string.alert_dialog_cancel);
        gqo gqoVar = new gqo();
        TextView textView = gqoVar.f18592f;
        if (textView != null) {
            textView.setVisibility(0);
        }
        gqoVar.x(-1, csxVar, string);
        gqoVar.h = 8;
        TextView textView2 = gqoVar.l;
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        gqoVar.z(-1, null, null);
        TextView textView3 = gqoVar.f18590d;
        if (textView3 != null) {
            textView3.setVisibility(0);
        }
        gqoVar.y(-1, csxVar2, string2);
        gqoVar.f18591e = null;
        gqoVar.m = 0;
        kj.t(activity, gqoVar, bundle, false);
    }

    public static dvf bh(dvf dvfVar) {
        if ((dvfVar instanceof esr) || (dvfVar instanceof bet)) {
            return dvfVar;
        }
        if (dvfVar instanceof Serializable) {
            return new bet(dvfVar);
        }
        esr esrVar = new esr();
        esrVar.f16095b = dvfVar;
        return esrVar;
    }

    public static int bi(int i, byte[] bArr, int i2, int i3, wl wlVar, dsc dscVar) {
        if ((i >>> 3) == 0) {
            throw new fba("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int ar = ar(bArr, i2, dscVar);
            wlVar.k(i, Long.valueOf(dscVar.f14695c));
            return ar;
        }
        if (i4 == 1) {
            wlVar.k(i, Long.valueOf(bj(i2, bArr)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int bb = bb(bArr, i2, dscVar);
            int i5 = dscVar.f14694b;
            if (i5 < 0) {
                throw new fba("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            if (i5 > bArr.length - bb) {
                throw new fba("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            if (i5 == 0) {
                wlVar.k(i, aki.f10381a);
            } else {
                wlVar.k(i, aki.c(bb, bArr, i5));
            }
            return bb + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw new fba("Protocol message contained an invalid tag (zero).");
            }
            wlVar.k(i, Integer.valueOf(az(bArr, i2)));
            return i2 + 4;
        }
        int i6 = (i & (-8)) | 4;
        wl g2 = wl.g();
        int i7 = dscVar.f14693a + 1;
        dscVar.f14693a = i7;
        if (i7 >= 100) {
            throw new fba("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i8 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int bb2 = bb(bArr, i2, dscVar);
            int i9 = dscVar.f14694b;
            if (i9 == i6) {
                i8 = i9;
                i2 = bb2;
                break;
            }
            i2 = bi(i9, bArr, bb2, i3, g2, dscVar);
            i8 = i9;
        }
        dscVar.f14693a--;
        if (i2 > i3 || i8 != i6) {
            throw new fba("Failed to parse the message.");
        }
        wlVar.k(i, g2);
        return i2;
    }

    public static long bj(int i, byte[] bArr) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48) | ((bArr[i + 7] & 255) << 56);
    }

    public static final dix bk(InputStream inputStream) {
        Logger logger = aro.f10725a;
        bff.p(inputStream, "<this>");
        return new dix(inputStream, new dme());
    }

    public static void bl(ShortcutManager shortcutManager, List list) {
        String stackTraceString;
        if (Build.VERSION.SDK_INT < 25) {
            return;
        }
        try {
            shortcutManager.removeDynamicShortcuts(list);
        } catch (Exception e2) {
            if ((!(e2 instanceof RemoteException) && !(e2 instanceof RuntimeException)) || (stackTraceString = Log.getStackTraceString(e2)) == null || (!stackTraceString.contains("verifyShortcutInfoPackage") && !stackTraceString.contains("Shortcut package name mismatch") && !stackTraceString.contains("Calling package name mismatch"))) {
                throw e2;
            }
            erl.ac(e2);
        }
    }

    public static ArrayList bm(Context context) {
        boolean z;
        ArrayList arrayList;
        try {
            ServiceInfo[] serviceInfoArr = context.getPackageManager().getPackageInfo(context.getPackageName(), MediaPlayer.MEDIA_PLAYER_OPTION_FILE_FORMAT).services;
            ArrayList arrayList2 = new ArrayList();
            if (serviceInfoArr != null) {
                for (ServiceInfo serviceInfo : serviceInfoArr) {
                    if ("android.permission.BIND_QUICK_SETTINGS_TILE".equals(serviceInfo.permission)) {
                        arrayList2.add(serviceInfo);
                    }
                }
            }
            HashMap hashMap = new HashMap();
            Iterator it = ((ArrayList) acr.az(context)).iterator();
            while (it.hasNext()) {
                byz byzVar = (byz) it.next();
                if (byzVar != null && (arrayList = byzVar.f12476a) != null) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        ert ertVar = (ert) it2.next();
                        if (ertVar != null && ertVar.s) {
                            String str = ertVar.q;
                            if (str.startsWith("locked_")) {
                                str = str.substring(7);
                            }
                            if (acw.ap(str)) {
                                str = "codekk_op";
                            }
                            if (!hashMap.containsKey(str)) {
                                hashMap.put(str, Integer.valueOf(hashMap.size()));
                            }
                        }
                    }
                }
            }
            HashMap hashMap2 = new HashMap();
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                ServiceInfo serviceInfo2 = (ServiceInfo) it3.next();
                String str2 = serviceInfo2.name;
                int componentEnabledSetting = context.getPackageManager().getComponentEnabledSetting(new ComponentName(context, serviceInfo2.name));
                if (componentEnabledSetting == 0) {
                    z = serviceInfo2.enabled;
                } else {
                    z = true;
                    if (componentEnabledSetting != 1) {
                        z = false;
                    }
                }
                hashMap2.put(str2, Boolean.valueOf(z));
            }
            List.b.sort(arrayList2, new ffp(hashMap2, 1, hashMap));
            return arrayList2;
        } catch (PackageManager.NameNotFoundException e2) {
            throw new IllegalStateException("Cannot read own tile services", e2);
        }
    }

    public static void bn(ShortcutManager shortcutManager, java.util.List list) {
        String stackTraceString;
        if (Build.VERSION.SDK_INT < 25) {
            return;
        }
        try {
            shortcutManager.addDynamicShortcuts(list);
        } catch (Exception e2) {
            if ((!(e2 instanceof RemoteException) && !(e2 instanceof RuntimeException)) || (stackTraceString = Log.getStackTraceString(e2)) == null || (!stackTraceString.contains("verifyShortcutInfoPackage") && !stackTraceString.contains("Shortcut package name mismatch") && !stackTraceString.contains("Calling package name mismatch") && !stackTraceString.contains("Package name must match"))) {
                throw e2;
            }
            erl.ac(e2);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(22:9|10|11|12|13|(3:78|79|(6:83|(2:74|75)|17|(11:27|28|29|(1:71)(1:33)|34|(2:39|40)|41|42|43|44|(3:46|47|48)(2:49|50))|(1:25)|26))|15|(0)|17|(1:19)|27|28|29|(1:31)|71|34|(3:36|39|40)|41|42|43|44|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00d3, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00d4, code lost:
    
        r0 = r11;
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00ee, code lost:
    
        if (r0 != null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00fc, code lost:
    
        g.erl.ac(new java.io.IOException("Cannot delete incomplete viewer cache file"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0106, code lost:
    
        g.erl.ac(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0092, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0093, code lost:
    
        r11 = r0;
        r0 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0085 A[Catch: Exception -> 0x0092, TryCatch #7 {Exception -> 0x0092, blocks: (B:29:0x007b, B:31:0x0085, B:33:0x008d, B:34:0x0098, B:36:0x00a9, B:39:0x00b0, B:40:0x00b7, B:41:0x00b8), top: B:28:0x007b }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a9 A[Catch: Exception -> 0x0092, TryCatch #7 {Exception -> 0x0092, blocks: (B:29:0x007b, B:31:0x0085, B:33:0x008d, B:34:0x0098, B:36:0x00a9, B:39:0x00b0, B:40:0x00b7, B:41:0x00b8), top: B:28:0x007b }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c8 A[Catch: all -> 0x00d8, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x00d8, blocks: (B:46:0x00c8, B:49:0x00db, B:50:0x00e2), top: B:44:0x00c6, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00db A[Catch: all -> 0x00d8, TRY_ENTER, TryCatch #2 {all -> 0x00d8, blocks: (B:46:0x00c8, B:49:0x00db, B:50:0x00e2), top: B:44:0x00c6, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0055 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String bo(Context context, Uri uri, boolean z) {
        Uri uri2;
        String str;
        File file;
        InputStream openInputStream;
        Cursor query;
        int columnIndex;
        if ("file".equals(uri.getScheme())) {
            return uri.getPath();
        }
        String str2 = null;
        if (!"content".equals(uri.getScheme())) {
            return null;
        }
        try {
            uri2 = uri;
            try {
                query = context.getContentResolver().query(uri2, new String[]{"_data"}, null, null, null);
            } catch (SQLiteException | IllegalArgumentException | SecurityException unused) {
                str = null;
                if (!TextUtils.isEmpty(str)) {
                }
                String n2 = buj.n(av(context, uri2));
                if (n2 == null) {
                }
                file = new File(context.getCacheDir(), "viewer_cache");
                if (!file.isDirectory()) {
                }
                File createTempFile = File.createTempFile("viewer_", r11, file);
                openInputStream = context.getContentResolver().openInputStream(uri2);
                if (openInputStream == null) {
                }
            }
        } catch (SQLiteException | IllegalArgumentException | SecurityException unused2) {
            uri2 = uri;
        }
        try {
            if (query != null) {
                try {
                    if (query.moveToFirst() && (columnIndex = query.getColumnIndex("_data")) >= 0) {
                        str = query.getString(columnIndex);
                        if (query != null) {
                            try {
                                query.close();
                            } catch (SQLiteException | IllegalArgumentException | SecurityException unused3) {
                            }
                        }
                        if (!TextUtils.isEmpty(str) || !new File(str).isFile() || !new File(str).canRead()) {
                            String n22 = buj.n(av(context, uri2));
                            String concat = (n22 == null && n22.matches("[A-Za-z0-9]{1,16}")) ? ".".concat(n22) : ".tmp";
                            file = new File(context.getCacheDir(), "viewer_cache");
                            if (!file.isDirectory() && !file.mkdirs()) {
                                throw new IOException("Cannot create viewer cache");
                            }
                            File createTempFile2 = File.createTempFile("viewer_", concat, file);
                            openInputStream = context.getContentResolver().openInputStream(uri2);
                            if (openInputStream == null) {
                                throw new IOException("Cannot copy document to viewer cache");
                            }
                            buj.ba(createTempFile2, openInputStream);
                            openInputStream.close();
                            str2 = createTempFile2.getAbsolutePath();
                            str = str2;
                        }
                        if (str == null && z) {
                            gm.e(context, R.string.no_permission);
                        }
                        return str;
                    }
                } catch (Throwable th) {
                    try {
                        query.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            }
            if (openInputStream == null) {
            }
        } finally {
        }
        str = null;
        if (query != null) {
        }
        if (!TextUtils.isEmpty(str)) {
        }
        String n222 = buj.n(av(context, uri2));
        if (n222 == null) {
        }
        file = new File(context.getCacheDir(), "viewer_cache");
        if (!file.isDirectory()) {
            throw new IOException("Cannot create viewer cache");
        }
        File createTempFile22 = File.createTempFile("viewer_", concat, file);
        openInputStream = context.getContentResolver().openInputStream(uri2);
    }

    public static int bp(Object obj, dxm dxmVar, byte[] bArr, int i, int i2, dsc dscVar) {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = aj(i4, bArr, i3, dscVar);
            i4 = dscVar.f14694b;
        }
        int i5 = i3;
        if (i4 < 0 || i4 > i2 - i5) {
            throw new fba("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i6 = dscVar.f14693a + 1;
        dscVar.f14693a = i6;
        if (i6 >= 100) {
            throw new fba("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i7 = i5 + i4;
        dxmVar.w(obj, bArr, i5, i7, dscVar);
        dscVar.f14693a--;
        dscVar.f14696d = obj;
        return i7;
    }

    public static Intent u(Context context, Uri uri, String str) {
        if (uri == null || "file".equalsIgnoreCase(uri.getScheme())) {
            String path = uri == null ? str : uri.getPath();
            if (TextUtils.isEmpty(path)) {
                throw new IllegalArgumentException("Missing file path");
            }
            uri = FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", new File(path));
        }
        if (!"content".equalsIgnoreCase(uri.getScheme())) {
            throw new IllegalArgumentException("Unsupported document URI");
        }
        String type = context.getContentResolver().getType(uri);
        if (TextUtils.isEmpty(type)) {
            type = ak(str, "text/plain");
        }
        Intent dataAndType = new Intent("android.intent.action.VIEW").setDataAndType(uri, type);
        dataAndType.addCategory("android.intent.category.DEFAULT");
        dataAndType.addFlags(268435457);
        dataAndType.setClipData(ClipData.newRawUri("", uri));
        return dataAndType;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x013f -> B:25:0x014a). Please report as a decompilation issue!!! */
    public static void v(final Activity activity, String str, final String str2, int i, Intent intent) {
        Object systemService;
        boolean isRequestPinShortcutSupported;
        ShortcutInfo.Builder shortLabel;
        ShortcutInfo.Builder longLabel;
        ShortcutInfo.Builder disabledMessage;
        Icon createWithResource;
        ShortcutInfo.Builder icon;
        ShortcutInfo.Builder intent2;
        ShortcutInfo build;
        boolean requestPinShortcut;
        fc fcVar = new fc(17, activity);
        final int i2 = 1;
        final int i3 = 0;
        if (dyd.ar(26)) {
            Intent intent3 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
            intent3.putExtra("android.intent.extra.shortcut.NAME", str2);
            intent3.putExtra("android.intent.extra.shortcut.INTENT", intent);
            intent3.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(activity, i));
            intent3.putExtra("duplicate", false);
            try {
                activity.sendBroadcast(intent3);
            } catch (SecurityException e2) {
                if (!dyd.bq(17)) {
                    throw e2;
                }
                erl.ac(e2);
            }
            fcVar.onSuccess(activity.getString(R.string.create_shortcut_success, str2));
            return;
        }
        systemService = activity.getSystemService((Class<Object>) dkx.b());
        ShortcutManager q2 = dkx.q(systemService);
        if (q2 == null) {
            fcVar.a(new dkp() { // from class: g.aeo
                @Override // g.dkp
                public final CharSequence _ci() {
                    int i4 = i2;
                    String str3 = str2;
                    Activity activity2 = activity;
                    switch (i4) {
                    }
                    return activity2.getString(R.string.create_shortcut_fail_not_support, str3);
                }
            });
            return;
        }
        final int i4 = 2;
        if (fnp.m()) {
            try {
                AppOpsManager appOpsManager = (AppOpsManager) activity.getSystemService("appops");
                if (appOpsManager != null) {
                    Class<?> cls = appOpsManager.getClass();
                    Class<?> cls2 = Integer.TYPE;
                    int intValue = ((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManager, 10017, Integer.valueOf(Process.myUid()), activity.getPackageName())).intValue();
                    if (intValue == 1 || intValue == 2) {
                        fcVar.a(new dkp() { // from class: g.qi
                            @Override // g.dkp
                            public final CharSequence _ci() {
                                int i5 = i2;
                                Activity activity2 = activity;
                                switch (i5) {
                                }
                                return activity2.getString(R.string.create_shortcut_fail_no_permission, activity2.getString(R.string.app_name));
                            }
                        });
                        return;
                    }
                }
            } catch (Exception unused) {
            }
        }
        try {
            isRequestPinShortcutSupported = q2.isRequestPinShortcutSupported();
            if (isRequestPinShortcutSupported) {
                dkx.d();
                shortLabel = dkx.t(activity, str).setShortLabel(str2);
                longLabel = shortLabel.setLongLabel(str2);
                disabledMessage = longLabel.setDisabledMessage(activity.getString(R.string.shortcut_disabled));
                createWithResource = Icon.createWithResource(activity, i);
                icon = disabledMessage.setIcon(createWithResource);
                intent2 = icon.setIntent(intent);
                build = intent2.build();
                requestPinShortcut = q2.requestPinShortcut(build, PendingIntent.getBroadcast(activity, 0, new Intent(activity, (Class<?>) a.u.a.class).setAction(activity.getPackageName() + ".shortcut.PINNED." + str).putExtra("shortcut_name", str2), 201326592).getIntentSender());
                if (!requestPinShortcut) {
                    fcVar.a(new dkp() { // from class: g.aeo
                        @Override // g.dkp
                        public final CharSequence _ci() {
                            int i42 = i3;
                            String str3 = str2;
                            Activity activity2 = activity;
                            switch (i42) {
                            }
                            return activity2.getString(R.string.create_shortcut_fail_not_support, str3);
                        }
                    });
                }
            } else {
                fcVar.a(new dkp() { // from class: g.aeo
                    @Override // g.dkp
                    public final CharSequence _ci() {
                        int i42 = i4;
                        String str3 = str2;
                        Activity activity2 = activity;
                        switch (i42) {
                        }
                        return activity2.getString(R.string.create_shortcut_fail_not_support, str3);
                    }
                });
            }
        } catch (SecurityException e3) {
            erl.ac(e3);
            fcVar.a(new dkp() { // from class: g.qi
                @Override // g.dkp
                public final CharSequence _ci() {
                    int i5 = i3;
                    Activity activity2 = activity;
                    switch (i5) {
                    }
                    return activity2.getString(R.string.create_shortcut_fail_no_permission, activity2.getString(R.string.app_name));
                }
            });
        }
    }

    public static final ago w(evq evqVar) {
        bff.p(evqVar, "<this>");
        return new ago(evqVar);
    }

    public static final dgz x(Socket socket) {
        Logger logger = aro.f10725a;
        gfm gfmVar = new gfm(socket);
        OutputStream outputStream = socket.getOutputStream();
        bff.e(outputStream, "getOutputStream(...)");
        return new dgz(gfmVar, 0, new dgz(outputStream, 1, gfmVar));
    }

    public static String y(String str) {
        return str.length() <= 127 ? str : str.substring(0, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0bac A[LOOP:1: B:27:0x0ba6->B:29:0x0bac, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static dpy z(JsonReader jsonReader, cgf cgfVar) {
        String str;
        char c2;
        dpy ghqVar;
        char c3;
        char c4;
        char c5;
        dpy ewzVar;
        char c6;
        char c7;
        dlz dlzVar;
        cnc cncVar;
        dlz dlzVar2;
        char c8;
        char c9;
        char c10;
        dpy egvVar;
        char c11;
        char c12;
        char c13;
        dlz dlzVar3;
        char c14;
        String str2;
        dlz dlzVar4;
        char c15;
        String str3;
        char c16;
        eyu eyuVar;
        jsonReader.beginObject();
        int i = 2;
        while (true) {
            if (!jsonReader.hasNext()) {
                str = null;
                break;
            }
            String nextName = jsonReader.nextName();
            nextName.getClass();
            if (!nextName.equals(ada.COLUMN_DOMAIN)) {
                if (nextName.equals("ty")) {
                    str = jsonReader.nextString();
                    break;
                }
                jsonReader.skipValue();
            } else {
                i = jsonReader.nextInt();
            }
        }
        if (str == null) {
            return null;
        }
        switch (str.hashCode()) {
            case 3239:
                if (str.equals("el")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 3270:
                if (str.equals("fl")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 3295:
                if (str.equals("gf")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 3307:
                if (str.equals("gr")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 3308:
                if (str.equals("gs")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 3488:
                if (str.equals("mm")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 3633:
                if (str.equals("rc")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 3634:
                if (str.equals("rd")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 3646:
                if (str.equals("rp")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 3669:
                if (str.equals("sh")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case 3679:
                if (str.equals("sr")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case 3681:
                if (str.equals("st")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case 3705:
                if (str.equals("tm")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case 3710:
                if (str.equals("tr")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        switch (c2) {
            case 0:
                boolean z = i == 3;
                String str4 = null;
                eqn eqnVar = null;
                dlz dlzVar5 = null;
                boolean z2 = false;
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    nextName2.getClass();
                    switch (nextName2.hashCode()) {
                        case 100:
                            if (nextName2.equals(ada.COLUMN_DOMAIN)) {
                                c3 = 0;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 112:
                            if (nextName2.equals("p")) {
                                c3 = 1;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 115:
                            if (nextName2.equals("s")) {
                                c3 = 2;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 3324:
                            if (nextName2.equals(LiveConfigKey.HIGH)) {
                                c3 = 3;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 3519:
                            if (nextName2.equals("nm")) {
                                c3 = 4;
                                break;
                            }
                            c3 = 65535;
                            break;
                        default:
                            c3 = 65535;
                            break;
                    }
                    switch (c3) {
                        case 0:
                            if (jsonReader.nextInt() != 3) {
                                z = false;
                                break;
                            } else {
                                z = true;
                                break;
                            }
                        case 1:
                            eqnVar = ckd.aa(jsonReader, cgfVar);
                            break;
                        case 2:
                            dlzVar5 = bff.as(jsonReader, cgfVar);
                            break;
                        case 3:
                            z2 = jsonReader.nextBoolean();
                            break;
                        case 4:
                            str4 = jsonReader.nextString();
                            break;
                        default:
                            jsonReader.skipValue();
                            break;
                    }
                }
                ghqVar = new ghq(str4, eqnVar, dlzVar5, z, z2);
                while (jsonReader.hasNext()) {
                    jsonReader.skipValue();
                }
                jsonReader.endObject();
                return ghqVar;
            case 1:
                dlz dlzVar6 = null;
                String str5 = null;
                dlz dlzVar7 = null;
                int i2 = 1;
                boolean z3 = false;
                boolean z4 = false;
                while (jsonReader.hasNext()) {
                    String nextName3 = jsonReader.nextName();
                    nextName3.getClass();
                    switch (nextName3.hashCode()) {
                        case -396065730:
                            if (nextName3.equals("fillEnabled")) {
                                c4 = 0;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 99:
                            if (nextName3.equals("c")) {
                                c4 = 1;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 111:
                            if (nextName3.equals("o")) {
                                c4 = 2;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 114:
                            if (nextName3.equals("r")) {
                                c4 = 3;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 3324:
                            if (nextName3.equals(LiveConfigKey.HIGH)) {
                                c4 = 4;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 3519:
                            if (nextName3.equals("nm")) {
                                c4 = 5;
                                break;
                            }
                            c4 = 65535;
                            break;
                        default:
                            c4 = 65535;
                            break;
                    }
                    switch (c4) {
                        case 0:
                            z3 = jsonReader.nextBoolean();
                            break;
                        case 1:
                            dlzVar7 = bff.t(jsonReader, cgfVar);
                            break;
                        case 2:
                            dlzVar6 = bff.av(jsonReader, cgfVar);
                            break;
                        case 3:
                            i2 = jsonReader.nextInt();
                            break;
                        case 4:
                            z4 = jsonReader.nextBoolean();
                            break;
                        case 5:
                            str5 = jsonReader.nextString();
                            break;
                        default:
                            jsonReader.skipValue();
                            break;
                    }
                }
                if (dlzVar6 == null) {
                    dlzVar6 = new dlz(6, Collections.singletonList(new flj(100)));
                }
                ghqVar = new gjw(str5, z3, i2 == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, dlzVar7, dlzVar6, z4);
                while (jsonReader.hasNext()) {
                }
                jsonReader.endObject();
                return ghqVar;
            case 2:
                dlz dlzVar8 = null;
                Path.FillType fillType = Path.FillType.WINDING;
                String str6 = null;
                gqk gqkVar = null;
                dlz dlzVar9 = null;
                dlz dlzVar10 = null;
                dlz dlzVar11 = null;
                boolean z5 = false;
                while (jsonReader.hasNext()) {
                    String nextName4 = jsonReader.nextName();
                    nextName4.getClass();
                    switch (nextName4.hashCode()) {
                        case 101:
                            if (nextName4.equals("e")) {
                                c5 = 0;
                                break;
                            }
                            c5 = 65535;
                            break;
                        case 103:
                            if (nextName4.equals("g")) {
                                c5 = 1;
                                break;
                            }
                            c5 = 65535;
                            break;
                        case 111:
                            if (nextName4.equals("o")) {
                                c5 = 2;
                                break;
                            }
                            c5 = 65535;
                            break;
                        case 114:
                            if (nextName4.equals("r")) {
                                c5 = 3;
                                break;
                            }
                            c5 = 65535;
                            break;
                        case 115:
                            if (nextName4.equals("s")) {
                                c5 = 4;
                                break;
                            }
                            c5 = 65535;
                            break;
                        case 116:
                            if (nextName4.equals("t")) {
                                c5 = 5;
                                break;
                            }
                            c5 = 65535;
                            break;
                        case 3324:
                            if (nextName4.equals(LiveConfigKey.HIGH)) {
                                c5 = 6;
                                break;
                            }
                            c5 = 65535;
                            break;
                        case 3519:
                            if (nextName4.equals("nm")) {
                                c5 = 7;
                                break;
                            }
                            c5 = 65535;
                            break;
                        default:
                            c5 = 65535;
                            break;
                    }
                    switch (c5) {
                        case 0:
                            dlzVar11 = bff.as(jsonReader, cgfVar);
                            break;
                        case 1:
                            jsonReader.beginObject();
                            int i3 = -1;
                            while (jsonReader.hasNext()) {
                                String nextName5 = jsonReader.nextName();
                                nextName5.getClass();
                                if (nextName5.equals(ada.COLUMN_KEY)) {
                                    dlzVar9 = bff.s(jsonReader, cgfVar, i3);
                                } else if (nextName5.equals("p")) {
                                    i3 = jsonReader.nextInt();
                                } else {
                                    jsonReader.skipValue();
                                }
                            }
                            jsonReader.endObject();
                            break;
                        case 2:
                            dlzVar8 = bff.av(jsonReader, cgfVar);
                            break;
                        case 3:
                            fillType = jsonReader.nextInt() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                            break;
                        case 4:
                            dlzVar10 = bff.as(jsonReader, cgfVar);
                            break;
                        case 5:
                            gqkVar = jsonReader.nextInt() == 1 ? gqk.dq : gqk.f18574d;
                            break;
                        case 6:
                            z5 = jsonReader.nextBoolean();
                            break;
                        case 7:
                            str6 = jsonReader.nextString();
                            break;
                        default:
                            jsonReader.skipValue();
                            break;
                    }
                }
                ghqVar = new flm(str6, gqkVar, fillType, dlzVar9, dlzVar8 == null ? new dlz(6, Collections.singletonList(new flj(100))) : dlzVar8, dlzVar10, dlzVar11, z5);
                while (jsonReader.hasNext()) {
                }
                jsonReader.endObject();
                return ghqVar;
            case 3:
                ArrayList arrayList = new ArrayList();
                String str7 = null;
                boolean z6 = false;
                while (jsonReader.hasNext()) {
                    String nextName6 = jsonReader.nextName();
                    nextName6.getClass();
                    switch (nextName6.hashCode()) {
                        case 3324:
                            if (nextName6.equals(LiveConfigKey.HIGH)) {
                                c6 = 0;
                                break;
                            }
                            c6 = 65535;
                            break;
                        case 3371:
                            if (nextName6.equals("it")) {
                                c6 = 1;
                                break;
                            }
                            c6 = 65535;
                            break;
                        case 3519:
                            if (nextName6.equals("nm")) {
                                c6 = 2;
                                break;
                            }
                            c6 = 65535;
                            break;
                        default:
                            c6 = 65535;
                            break;
                    }
                    switch (c6) {
                        case 0:
                            z6 = jsonReader.nextBoolean();
                            break;
                        case 1:
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                dpy z7 = z(jsonReader, cgfVar);
                                if (z7 != null) {
                                    arrayList.add(z7);
                                }
                            }
                            jsonReader.endArray();
                            break;
                        case 2:
                            str7 = jsonReader.nextString();
                            break;
                        default:
                            jsonReader.skipValue();
                            break;
                    }
                }
                ewzVar = new ewz(str7, arrayList, z6);
                ghqVar = ewzVar;
                while (jsonReader.hasNext()) {
                }
                jsonReader.endObject();
                return ghqVar;
            case 4:
                ArrayList arrayList2 = new ArrayList();
                dlz dlzVar12 = null;
                cnc cncVar2 = null;
                String str8 = null;
                gqk gqkVar2 = null;
                dlz dlzVar13 = null;
                dlz dlzVar14 = null;
                dlz dlzVar15 = null;
                ctn ctnVar = null;
                fvo fvoVar = null;
                cnc cncVar3 = null;
                boolean z8 = false;
                while (jsonReader.hasNext()) {
                    String nextName7 = jsonReader.nextName();
                    nextName7.getClass();
                    switch (nextName7.hashCode()) {
                        case 100:
                            if (nextName7.equals(ada.COLUMN_DOMAIN)) {
                                c7 = 0;
                                break;
                            }
                            c7 = 65535;
                            break;
                        case 101:
                            if (nextName7.equals("e")) {
                                c7 = 1;
                                break;
                            }
                            c7 = 65535;
                            break;
                        case 103:
                            if (nextName7.equals("g")) {
                                c7 = 2;
                                break;
                            }
                            c7 = 65535;
                            break;
                        case 111:
                            if (nextName7.equals("o")) {
                                c7 = 3;
                                break;
                            }
                            c7 = 65535;
                            break;
                        case 115:
                            if (nextName7.equals("s")) {
                                c7 = 4;
                                break;
                            }
                            c7 = 65535;
                            break;
                        case 116:
                            if (nextName7.equals("t")) {
                                c7 = 5;
                                break;
                            }
                            c7 = 65535;
                            break;
                        case 119:
                            if (nextName7.equals("w")) {
                                c7 = 6;
                                break;
                            }
                            c7 = 65535;
                            break;
                        case 3324:
                            if (nextName7.equals(LiveConfigKey.HIGH)) {
                                c7 = 7;
                                break;
                            }
                            c7 = 65535;
                            break;
                        case 3447:
                            if (nextName7.equals("lc")) {
                                c7 = '\b';
                                break;
                            }
                            c7 = 65535;
                            break;
                        case 3454:
                            if (nextName7.equals("lj")) {
                                c7 = '\t';
                                break;
                            }
                            c7 = 65535;
                            break;
                        case 3487:
                            if (nextName7.equals("ml")) {
                                c7 = '\n';
                                break;
                            }
                            c7 = 65535;
                            break;
                        case 3519:
                            if (nextName7.equals("nm")) {
                                c7 = 11;
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
                            dlzVar = dlzVar12;
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                jsonReader.beginObject();
                                String str9 = null;
                                cnc cncVar4 = null;
                                while (jsonReader.hasNext()) {
                                    String nextName8 = jsonReader.nextName();
                                    nextName8.getClass();
                                    cnc cncVar5 = cncVar2;
                                    if (nextName8.equals("n")) {
                                        str9 = jsonReader.nextString();
                                    } else if (nextName8.equals(ada.COLUMN_VALUE)) {
                                        cncVar4 = bff.am(jsonReader, cgfVar, true);
                                    } else {
                                        jsonReader.skipValue();
                                    }
                                    cncVar2 = cncVar5;
                                }
                                cnc cncVar6 = cncVar2;
                                jsonReader.endObject();
                                if (str9.equals("o")) {
                                    cncVar3 = cncVar4;
                                } else if (str9.equals(ada.COLUMN_DOMAIN) || str9.equals("g")) {
                                    cgfVar.f12826d = true;
                                    arrayList2.add(cncVar4);
                                }
                                cncVar2 = cncVar6;
                            }
                            cncVar = cncVar2;
                            jsonReader.endArray();
                            if (arrayList2.size() == 1) {
                                arrayList2.add(arrayList2.get(0));
                                dlzVar12 = dlzVar;
                                cncVar2 = cncVar;
                                break;
                            }
                            dlzVar12 = dlzVar;
                            cncVar2 = cncVar;
                            break;
                        case 1:
                            dlzVar15 = bff.as(jsonReader, cgfVar);
                            break;
                        case 2:
                            dlz dlzVar16 = dlzVar12;
                            jsonReader.beginObject();
                            int i4 = -1;
                            while (jsonReader.hasNext()) {
                                String nextName9 = jsonReader.nextName();
                                nextName9.getClass();
                                dlz dlzVar17 = dlzVar16;
                                if (nextName9.equals(ada.COLUMN_KEY)) {
                                    dlzVar13 = bff.s(jsonReader, cgfVar, i4);
                                } else if (nextName9.equals("p")) {
                                    i4 = jsonReader.nextInt();
                                } else {
                                    jsonReader.skipValue();
                                }
                                dlzVar16 = dlzVar17;
                            }
                            jsonReader.endObject();
                            dlzVar12 = dlzVar16;
                            break;
                        case 3:
                            dlzVar12 = bff.av(jsonReader, cgfVar);
                            break;
                        case 4:
                            dlzVar14 = bff.as(jsonReader, cgfVar);
                            break;
                        case 5:
                            dlzVar2 = dlzVar12;
                            gqkVar2 = jsonReader.nextInt() == 1 ? gqk.dq : gqk.f18574d;
                            dlzVar12 = dlzVar2;
                            break;
                        case 6:
                            cncVar2 = bff.am(jsonReader, cgfVar, true);
                            break;
                        case 7:
                            z8 = jsonReader.nextBoolean();
                            break;
                        case '\b':
                            dlzVar2 = dlzVar12;
                            ctnVar = ctn.values()[jsonReader.nextInt() - 1];
                            dlzVar12 = dlzVar2;
                            break;
                        case '\t':
                            dlzVar2 = dlzVar12;
                            fvoVar = fvo.values()[jsonReader.nextInt() - 1];
                            dlzVar12 = dlzVar2;
                            break;
                        case '\n':
                            dlzVar2 = dlzVar12;
                            f2 = (float) jsonReader.nextDouble();
                            dlzVar12 = dlzVar2;
                            break;
                        case 11:
                            str8 = jsonReader.nextString();
                            break;
                        default:
                            jsonReader.skipValue();
                            dlzVar = dlzVar12;
                            cncVar = cncVar2;
                            dlzVar12 = dlzVar;
                            cncVar2 = cncVar;
                            break;
                    }
                }
                dlz dlzVar18 = dlzVar12;
                ghqVar = new gqw(str8, gqkVar2, dlzVar13, dlzVar18 == null ? new dlz(6, Collections.singletonList(new flj(100))) : dlzVar18, dlzVar14, dlzVar15, cncVar2, ctnVar, fvoVar, f2, arrayList2, cncVar3, z8);
                while (jsonReader.hasNext()) {
                }
                jsonReader.endObject();
                return ghqVar;
            case 5:
                cxp cxpVar = null;
                String str10 = null;
                boolean z9 = false;
                while (jsonReader.hasNext()) {
                    String nextName10 = jsonReader.nextName();
                    nextName10.getClass();
                    switch (nextName10.hashCode()) {
                        case 3324:
                            if (nextName10.equals(LiveConfigKey.HIGH)) {
                                c8 = 0;
                                break;
                            }
                            c8 = 65535;
                            break;
                        case 3488:
                            if (nextName10.equals("mm")) {
                                c8 = 1;
                                break;
                            }
                            c8 = 65535;
                            break;
                        case 3519:
                            if (nextName10.equals("nm")) {
                                c8 = 2;
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
                            z9 = jsonReader.nextBoolean();
                            break;
                        case 1:
                            int nextInt = jsonReader.nextInt();
                            if (nextInt == 1) {
                                cxpVar = cxp.dq;
                                break;
                            } else if (nextInt == 2) {
                                cxpVar = cxp.f13702d;
                                break;
                            } else if (nextInt == 3) {
                                cxpVar = cxp.ox;
                                break;
                            } else if (nextInt == 4) {
                                cxpVar = cxp.p;
                                break;
                            } else if (nextInt == 5) {
                                cxpVar = cxp.s;
                                break;
                            } else {
                                cxpVar = cxp.dq;
                                break;
                            }
                        case 2:
                            str10 = jsonReader.nextString();
                            break;
                        default:
                            jsonReader.skipValue();
                            break;
                    }
                }
                gtd gtdVar = new gtd(str10, cxpVar, z9);
                cgfVar.t("Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove().");
                ghqVar = gtdVar;
                while (jsonReader.hasNext()) {
                }
                jsonReader.endObject();
                return ghqVar;
            case 6:
                String str11 = null;
                eqn eqnVar2 = null;
                dlz dlzVar19 = null;
                cnc cncVar7 = null;
                boolean z10 = false;
                while (jsonReader.hasNext()) {
                    String nextName11 = jsonReader.nextName();
                    nextName11.getClass();
                    switch (nextName11.hashCode()) {
                        case 112:
                            if (nextName11.equals("p")) {
                                c9 = 0;
                                break;
                            }
                            c9 = 65535;
                            break;
                        case 114:
                            if (nextName11.equals("r")) {
                                c9 = 1;
                                break;
                            }
                            c9 = 65535;
                            break;
                        case 115:
                            if (nextName11.equals("s")) {
                                c9 = 2;
                                break;
                            }
                            c9 = 65535;
                            break;
                        case 3324:
                            if (nextName11.equals(LiveConfigKey.HIGH)) {
                                c9 = 3;
                                break;
                            }
                            c9 = 65535;
                            break;
                        case 3519:
                            if (nextName11.equals("nm")) {
                                c9 = 4;
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
                            eqnVar2 = ckd.aa(jsonReader, cgfVar);
                            break;
                        case 1:
                            cncVar7 = bff.am(jsonReader, cgfVar, true);
                            break;
                        case 2:
                            dlzVar19 = bff.as(jsonReader, cgfVar);
                            break;
                        case 3:
                            z10 = jsonReader.nextBoolean();
                            break;
                        case 4:
                            str11 = jsonReader.nextString();
                            break;
                        default:
                            jsonReader.skipValue();
                            break;
                    }
                }
                ewzVar = new egv(str11, eqnVar2, dlzVar19, cncVar7, z10);
                ghqVar = ewzVar;
                while (jsonReader.hasNext()) {
                }
                jsonReader.endObject();
                return ghqVar;
            case 7:
                String str12 = null;
                cnc cncVar8 = null;
                boolean z11 = false;
                while (jsonReader.hasNext()) {
                    String nextName12 = jsonReader.nextName();
                    nextName12.getClass();
                    switch (nextName12.hashCode()) {
                        case 114:
                            if (nextName12.equals("r")) {
                                c10 = 0;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 3324:
                            if (nextName12.equals(LiveConfigKey.HIGH)) {
                                c10 = 1;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 3519:
                            if (nextName12.equals("nm")) {
                                c10 = 2;
                                break;
                            }
                            c10 = 65535;
                            break;
                        default:
                            c10 = 65535;
                            break;
                    }
                    switch (c10) {
                        case 0:
                            cncVar8 = bff.am(jsonReader, cgfVar, true);
                            break;
                        case 1:
                            z11 = jsonReader.nextBoolean();
                            break;
                        case 2:
                            str12 = jsonReader.nextString();
                            break;
                        default:
                            jsonReader.skipValue();
                            break;
                    }
                }
                ghqVar = z11 ? null : new cwk(str12, cncVar8);
                while (jsonReader.hasNext()) {
                }
                jsonReader.endObject();
                return ghqVar;
            case '\b':
                cnc cncVar9 = null;
                cnc cncVar10 = null;
                String str13 = null;
                eld eldVar = null;
                boolean z12 = false;
                while (jsonReader.hasNext()) {
                    String nextName13 = jsonReader.nextName();
                    nextName13.getClass();
                    switch (nextName13.hashCode()) {
                        case 99:
                            if (nextName13.equals("c")) {
                                c11 = 0;
                                break;
                            }
                            c11 = 65535;
                            break;
                        case 111:
                            if (nextName13.equals("o")) {
                                c11 = 1;
                                break;
                            }
                            c11 = 65535;
                            break;
                        case 3324:
                            if (nextName13.equals(LiveConfigKey.HIGH)) {
                                c11 = 2;
                                break;
                            }
                            c11 = 65535;
                            break;
                        case 3519:
                            if (nextName13.equals("nm")) {
                                c11 = 3;
                                break;
                            }
                            c11 = 65535;
                            break;
                        case 3710:
                            if (nextName13.equals("tr")) {
                                c11 = 4;
                                break;
                            }
                            c11 = 65535;
                            break;
                        default:
                            c11 = 65535;
                            break;
                    }
                    switch (c11) {
                        case 0:
                            cncVar9 = bff.am(jsonReader, cgfVar, false);
                            break;
                        case 1:
                            cncVar10 = bff.am(jsonReader, cgfVar, false);
                            break;
                        case 2:
                            z12 = jsonReader.nextBoolean();
                            break;
                        case 3:
                            str13 = jsonReader.nextString();
                            break;
                        case 4:
                            eldVar = dyd.ak(jsonReader, cgfVar);
                            break;
                        default:
                            jsonReader.skipValue();
                            break;
                    }
                }
                egvVar = new egv(str13, cncVar9, cncVar10, eldVar, z12);
                ghqVar = egvVar;
                while (jsonReader.hasNext()) {
                }
                jsonReader.endObject();
                return ghqVar;
            case '\t':
                dlz dlzVar20 = null;
                String str14 = null;
                int i5 = 0;
                boolean z13 = false;
                while (jsonReader.hasNext()) {
                    String nextName14 = jsonReader.nextName();
                    nextName14.getClass();
                    switch (nextName14.hashCode()) {
                        case 3324:
                            if (nextName14.equals(LiveConfigKey.HIGH)) {
                                c12 = 0;
                                break;
                            }
                            c12 = 65535;
                            break;
                        case 3432:
                            if (nextName14.equals(MediationConstant.ADN_KS)) {
                                c12 = 1;
                                break;
                            }
                            c12 = 65535;
                            break;
                        case 3519:
                            if (nextName14.equals("nm")) {
                                c12 = 2;
                                break;
                            }
                            c12 = 65535;
                            break;
                        case 104415:
                            if (nextName14.equals("ind")) {
                                c12 = 3;
                                break;
                            }
                            c12 = 65535;
                            break;
                        default:
                            c12 = 65535;
                            break;
                    }
                    switch (c12) {
                        case 0:
                            z13 = jsonReader.nextBoolean();
                            break;
                        case 1:
                            dlzVar20 = new dlz(1, ffb.bc(jsonReader, cgfVar, ebx.h(), ao.f10549g, false));
                            break;
                        case 2:
                            str14 = jsonReader.nextString();
                            break;
                        case 3:
                            i5 = jsonReader.nextInt();
                            break;
                        default:
                            jsonReader.skipValue();
                            break;
                    }
                }
                ewzVar = new awc(str14, i5, dlzVar20, z13);
                ghqVar = ewzVar;
                while (jsonReader.hasNext()) {
                }
                jsonReader.endObject();
                return ghqVar;
            case '\n':
                boolean z14 = i == 3;
                String str15 = null;
                ezt eztVar = null;
                cnc cncVar11 = null;
                eqn eqnVar3 = null;
                cnc cncVar12 = null;
                cnc cncVar13 = null;
                cnc cncVar14 = null;
                cnc cncVar15 = null;
                cnc cncVar16 = null;
                boolean z15 = false;
                while (jsonReader.hasNext()) {
                    String nextName15 = jsonReader.nextName();
                    nextName15.getClass();
                    switch (nextName15.hashCode()) {
                        case 100:
                            if (nextName15.equals(ada.COLUMN_DOMAIN)) {
                                c13 = 0;
                                break;
                            }
                            c13 = 65535;
                            break;
                        case 112:
                            if (nextName15.equals("p")) {
                                c13 = 1;
                                break;
                            }
                            c13 = 65535;
                            break;
                        case 114:
                            if (nextName15.equals("r")) {
                                c13 = 2;
                                break;
                            }
                            c13 = 65535;
                            break;
                        case 3324:
                            if (nextName15.equals(LiveConfigKey.HIGH)) {
                                c13 = 3;
                                break;
                            }
                            c13 = 65535;
                            break;
                        case 3369:
                            if (nextName15.equals("ir")) {
                                c13 = 4;
                                break;
                            }
                            c13 = 65535;
                            break;
                        case 3370:
                            if (nextName15.equals("is")) {
                                c13 = 5;
                                break;
                            }
                            c13 = 65535;
                            break;
                        case 3519:
                            if (nextName15.equals("nm")) {
                                c13 = 6;
                                break;
                            }
                            c13 = 65535;
                            break;
                        case 3555:
                            if (nextName15.equals("or")) {
                                c13 = 7;
                                break;
                            }
                            c13 = 65535;
                            break;
                        case 3556:
                            if (nextName15.equals("os")) {
                                c13 = '\b';
                                break;
                            }
                            c13 = 65535;
                            break;
                        case 3588:
                            if (nextName15.equals("pt")) {
                                c13 = '\t';
                                break;
                            }
                            c13 = 65535;
                            break;
                        case 3686:
                            if (nextName15.equals("sy")) {
                                c13 = '\n';
                                break;
                            }
                            c13 = 65535;
                            break;
                        default:
                            c13 = 65535;
                            break;
                    }
                    switch (c13) {
                        case 0:
                            if (jsonReader.nextInt() != 3) {
                                z14 = false;
                                break;
                            } else {
                                z14 = true;
                                break;
                            }
                        case 1:
                            eqnVar3 = ckd.aa(jsonReader, cgfVar);
                            break;
                        case 2:
                            cncVar12 = bff.am(jsonReader, cgfVar, false);
                            break;
                        case 3:
                            z15 = jsonReader.nextBoolean();
                            break;
                        case 4:
                            cncVar13 = bff.am(jsonReader, cgfVar, true);
                            break;
                        case 5:
                            cncVar15 = bff.am(jsonReader, cgfVar, false);
                            break;
                        case 6:
                            str15 = jsonReader.nextString();
                            break;
                        case 7:
                            cncVar14 = bff.am(jsonReader, cgfVar, true);
                            break;
                        case '\b':
                            cncVar16 = bff.am(jsonReader, cgfVar, false);
                            break;
                        case '\t':
                            cncVar11 = bff.am(jsonReader, cgfVar, false);
                            break;
                        case '\n':
                            eztVar = ezt.b(jsonReader.nextInt());
                            break;
                        default:
                            jsonReader.skipValue();
                            break;
                    }
                }
                ghqVar = new cup(str15, eztVar, cncVar11, eqnVar3, cncVar12, cncVar13, cncVar14, cncVar15, cncVar16, z15, z14);
                while (jsonReader.hasNext()) {
                }
                jsonReader.endObject();
                return ghqVar;
            case 11:
                ArrayList arrayList3 = new ArrayList();
                dlz dlzVar21 = null;
                String str16 = null;
                cnc cncVar17 = null;
                dlz dlzVar22 = null;
                cnc cncVar18 = null;
                ctn ctnVar2 = null;
                fvo fvoVar2 = null;
                float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                boolean z16 = false;
                while (jsonReader.hasNext()) {
                    String nextName16 = jsonReader.nextName();
                    nextName16.getClass();
                    switch (nextName16.hashCode()) {
                        case 99:
                            dlzVar3 = dlzVar21;
                            if (nextName16.equals("c")) {
                                c14 = 0;
                                break;
                            }
                            c14 = 65535;
                            break;
                        case 100:
                            dlzVar3 = dlzVar21;
                            if (nextName16.equals(ada.COLUMN_DOMAIN)) {
                                c14 = 1;
                                break;
                            }
                            c14 = 65535;
                            break;
                        case 111:
                            dlzVar3 = dlzVar21;
                            if (nextName16.equals("o")) {
                                c14 = 2;
                                break;
                            }
                            c14 = 65535;
                            break;
                        case 119:
                            dlzVar3 = dlzVar21;
                            if (nextName16.equals("w")) {
                                c14 = 3;
                                break;
                            }
                            c14 = 65535;
                            break;
                        case 3324:
                            dlzVar3 = dlzVar21;
                            if (nextName16.equals(LiveConfigKey.HIGH)) {
                                c14 = 4;
                                break;
                            }
                            c14 = 65535;
                            break;
                        case 3447:
                            dlzVar3 = dlzVar21;
                            if (nextName16.equals("lc")) {
                                c14 = 5;
                                break;
                            }
                            c14 = 65535;
                            break;
                        case 3454:
                            dlzVar3 = dlzVar21;
                            if (nextName16.equals("lj")) {
                                c14 = 6;
                                break;
                            }
                            c14 = 65535;
                            break;
                        case 3487:
                            dlzVar3 = dlzVar21;
                            if (nextName16.equals("ml")) {
                                c14 = 7;
                                break;
                            }
                            c14 = 65535;
                            break;
                        case 3519:
                            if (nextName16.equals("nm")) {
                                dlzVar3 = dlzVar21;
                                c14 = '\b';
                                break;
                            }
                        default:
                            dlzVar3 = dlzVar21;
                            c14 = 65535;
                            break;
                    }
                    switch (c14) {
                        case 0:
                            dlzVar22 = bff.t(jsonReader, cgfVar);
                            dlzVar21 = dlzVar3;
                            break;
                        case 1:
                            str2 = str16;
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                jsonReader.beginObject();
                                String str17 = null;
                                cnc cncVar19 = null;
                                while (jsonReader.hasNext()) {
                                    cnc cncVar20 = cncVar17;
                                    String nextName17 = jsonReader.nextName();
                                    nextName17.getClass();
                                    dlz dlzVar23 = dlzVar22;
                                    if (nextName17.equals("n")) {
                                        str17 = jsonReader.nextString();
                                    } else if (nextName17.equals(ada.COLUMN_VALUE)) {
                                        cncVar19 = bff.am(jsonReader, cgfVar, true);
                                    } else {
                                        jsonReader.skipValue();
                                    }
                                    cncVar17 = cncVar20;
                                    dlzVar22 = dlzVar23;
                                }
                                cnc cncVar21 = cncVar17;
                                dlz dlzVar24 = dlzVar22;
                                jsonReader.endObject();
                                str17.getClass();
                                switch (str17.hashCode()) {
                                    case 100:
                                        if (str17.equals(ada.COLUMN_DOMAIN)) {
                                            c15 = 0;
                                            break;
                                        }
                                        c15 = 65535;
                                        break;
                                    case 103:
                                        if (str17.equals("g")) {
                                            c15 = 1;
                                            break;
                                        }
                                        c15 = 65535;
                                        break;
                                    case 111:
                                        if (str17.equals("o")) {
                                            c15 = 2;
                                            break;
                                        }
                                        c15 = 65535;
                                        break;
                                    default:
                                        c15 = 65535;
                                        break;
                                }
                                switch (c15) {
                                    case 0:
                                    case 1:
                                        cgfVar.f12826d = true;
                                        arrayList3.add(cncVar19);
                                        cncVar17 = cncVar21;
                                        break;
                                    case 2:
                                        cncVar17 = cncVar19;
                                        break;
                                    default:
                                        cncVar17 = cncVar21;
                                        break;
                                }
                                dlzVar22 = dlzVar24;
                            }
                            cnc cncVar22 = cncVar17;
                            dlzVar4 = dlzVar22;
                            jsonReader.endArray();
                            if (arrayList3.size() == 1) {
                                arrayList3.add(arrayList3.get(0));
                                str16 = str2;
                                dlzVar21 = dlzVar3;
                                cncVar17 = cncVar22;
                                dlzVar22 = dlzVar4;
                                break;
                            } else {
                                cncVar17 = cncVar22;
                                str16 = str2;
                                dlzVar21 = dlzVar3;
                                dlzVar22 = dlzVar4;
                            }
                        case 2:
                            dlzVar21 = bff.av(jsonReader, cgfVar);
                            break;
                        case 3:
                            cncVar18 = bff.am(jsonReader, cgfVar, true);
                            dlzVar21 = dlzVar3;
                            break;
                        case 4:
                            z16 = jsonReader.nextBoolean();
                            dlzVar21 = dlzVar3;
                            break;
                        case 5:
                            str3 = str16;
                            ctnVar2 = ctn.values()[jsonReader.nextInt() - 1];
                            str16 = str3;
                            dlzVar21 = dlzVar3;
                            break;
                        case 6:
                            str3 = str16;
                            fvoVar2 = fvo.values()[jsonReader.nextInt() - 1];
                            str16 = str3;
                            dlzVar21 = dlzVar3;
                            break;
                        case 7:
                            str3 = str16;
                            f3 = (float) jsonReader.nextDouble();
                            str16 = str3;
                            dlzVar21 = dlzVar3;
                            break;
                        case '\b':
                            str16 = jsonReader.nextString();
                            dlzVar21 = dlzVar3;
                            break;
                        default:
                            jsonReader.skipValue();
                            str2 = str16;
                            dlzVar4 = dlzVar22;
                            str16 = str2;
                            dlzVar21 = dlzVar3;
                            dlzVar22 = dlzVar4;
                            break;
                    }
                }
                dlz dlzVar25 = dlzVar21;
                ghqVar = new esd(str16, cncVar17, arrayList3, dlzVar22, dlzVar25 == null ? new dlz(6, Collections.singletonList(new flj(100))) : dlzVar25, cncVar18, ctnVar2, fvoVar2, f3, z16);
                while (jsonReader.hasNext()) {
                }
                jsonReader.endObject();
                return ghqVar;
            case '\f':
                cnc cncVar23 = null;
                boolean z17 = false;
                String str18 = null;
                cnc cncVar24 = null;
                cnc cncVar25 = null;
                eyu eyuVar2 = null;
                while (jsonReader.hasNext()) {
                    String nextName18 = jsonReader.nextName();
                    nextName18.getClass();
                    switch (nextName18.hashCode()) {
                        case 101:
                            if (nextName18.equals("e")) {
                                c16 = 0;
                                break;
                            }
                            c16 = 65535;
                            break;
                        case 109:
                            if (nextName18.equals("m")) {
                                c16 = 1;
                                break;
                            }
                            c16 = 65535;
                            break;
                        case 111:
                            if (nextName18.equals("o")) {
                                c16 = 2;
                                break;
                            }
                            c16 = 65535;
                            break;
                        case 115:
                            if (nextName18.equals("s")) {
                                c16 = 3;
                                break;
                            }
                            c16 = 65535;
                            break;
                        case 3324:
                            if (nextName18.equals(LiveConfigKey.HIGH)) {
                                c16 = 4;
                                break;
                            }
                            c16 = 65535;
                            break;
                        case 3519:
                            if (nextName18.equals("nm")) {
                                c16 = 5;
                                break;
                            }
                            c16 = 65535;
                            break;
                        default:
                            c16 = 65535;
                            break;
                    }
                    switch (c16) {
                        case 0:
                            cncVar23 = bff.am(jsonReader, cgfVar, false);
                            break;
                        case 1:
                            int nextInt2 = jsonReader.nextInt();
                            if (nextInt2 == 1) {
                                eyuVar = eyu.dq;
                            } else {
                                if (nextInt2 != 2) {
                                    throw new IllegalArgumentException("Unknown trim path type ".concat(String.valueOf(nextInt2)));
                                }
                                eyuVar = eyu.f16389d;
                            }
                            eyuVar2 = eyuVar;
                            break;
                        case 2:
                            cncVar25 = bff.am(jsonReader, cgfVar, false);
                            break;
                        case 3:
                            cncVar24 = bff.am(jsonReader, cgfVar, false);
                            break;
                        case 4:
                            z17 = jsonReader.nextBoolean();
                            break;
                        case 5:
                            str18 = jsonReader.nextString();
                            break;
                        default:
                            jsonReader.skipValue();
                            break;
                    }
                }
                egvVar = new cxl(str18, eyuVar2, cncVar24, cncVar23, cncVar25, z17);
                ghqVar = egvVar;
                while (jsonReader.hasNext()) {
                }
                jsonReader.endObject();
                return ghqVar;
            case '\r':
                ghqVar = dyd.ak(jsonReader, cgfVar);
                while (jsonReader.hasNext()) {
                }
                jsonReader.endObject();
                return ghqVar;
            default:
                hbp.b("Unknown shape type ".concat(str));
                ghqVar = null;
                while (jsonReader.hasNext()) {
                }
                jsonReader.endObject();
                return ghqVar;
        }
    }

    @Override // g.byr
    public void _ar(hed hedVar, cfm cfmVar) {
    }

    @Override // g.byr
    public boolean _cs(hed hedVar, cfm cfmVar) {
        return true;
    }

    @Override // g.byr
    public void bq(hed hedVar, cih cihVar) {
    }
}
