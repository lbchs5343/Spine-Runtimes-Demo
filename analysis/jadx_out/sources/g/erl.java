package g;

import a.u.e.TUE;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.tencent.bugly.crashreport.CrashReport;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public abstract class erl implements se {
    public static cfg q;
    public static ctt s;
    public static final int[] r = new int[0];
    public static final Object[] t = new Object[0];
    public static final byte[] u = {112, 114, 111, 0};
    public static final byte[] p = {112, 114, 109, 0};

    public static Intent aa(Context context, ert ertVar, String str) {
        Intent c2;
        if (ertVar == null) {
            return null;
        }
        if (!ertVar.p) {
            String str2 = ertVar.q;
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setPackage(context.getPackageName());
            intent.setClass(context, c.b.a.class);
            intent.setFlags(C.ENCODING_PCM_A_LAW);
            intent.setDataAndType(Uri.parse(TextUtils.join(":", new String[]{str2, str})), "trinea/android-tool");
            return intent;
        }
        hdb hdbVar = ertVar.r;
        if (hdbVar != null && (hdbVar instanceof gdm) && (c2 = ((gdm) hdbVar).c(context)) != null) {
            return TextUtils.isEmpty(c2.getAction()) ? new Intent(c2).setAction("android.intent.action.VIEW") : c2;
        }
        throw new RuntimeException("Directly processor of tool is null or it's intent is null, tool id is " + ertVar.q);
    }

    public static void ab(ContextWrapper contextWrapper, gpv gpvVar) {
        ctt cttVar = s;
        if (cttVar != null) {
            IdentityHashMap identityHashMap = (IdentityHashMap) cttVar.i;
            boolean isEmpty = identityHashMap.isEmpty();
            identityHashMap.put(contextWrapper, new bes(gpvVar));
            if (isEmpty) {
                cttVar.f13493g = false;
                ark arkVar = (ark) cttVar.f13489c;
                bzq bzqVar = (bzq) cttVar.f13492f;
                arkVar.f10717f.add(bzqVar);
                arkVar.m.post(bzqVar);
            }
            cttVar.m(0L);
        }
    }

    public static void ac(Throwable th) {
        cfg cfgVar = q;
        if (cfgVar != null) {
            cfgVar.getClass();
            CrashReport.postCatchedException(new TUE(th));
        }
    }

    public static xj[] ad(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, xj[] xjVarArr) {
        byte[] bArr3 = cux.r;
        if (!Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(bArr, cux.t)) {
                throw new IllegalStateException("Unsupported meta version");
            }
            int w = (int) acw.w(fileInputStream, 2);
            byte[] ay = acw.ay(fileInputStream, (int) acw.w(fileInputStream, 4), (int) acw.w(fileInputStream, 4));
            if (fileInputStream.read() > 0) {
                throw new IllegalStateException("Content found after the end of file");
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(ay);
            try {
                xj[] ba = ba(byteArrayInputStream, bArr2, w, xjVarArr);
                byteArrayInputStream.close();
                return ba;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (Arrays.equals(cux.m, bArr2)) {
            throw new IllegalStateException("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
        }
        if (!Arrays.equals(bArr, bArr3)) {
            throw new IllegalStateException("Unsupported meta version");
        }
        int w2 = (int) acw.w(fileInputStream, 1);
        byte[] ay2 = acw.ay(fileInputStream, (int) acw.w(fileInputStream, 4), (int) acw.w(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(ay2);
        try {
            xj[] x = x(byteArrayInputStream2, w2, xjVarArr);
            byteArrayInputStream2.close();
            return x;
        } catch (Throwable th3) {
            try {
                byteArrayInputStream2.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static void ae(ByteArrayOutputStream byteArrayOutputStream, xj xjVar) {
        bd(byteArrayOutputStream, xjVar);
        int i = xjVar.i;
        int[] iArr = xjVar.f20288a;
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = iArr[i2];
            acw.v(byteArrayOutputStream, i4 - i3);
            i2++;
            i3 = i4;
        }
        byte[] bArr = new byte[(((i * 2) + 7) & (-8)) / 8];
        for (Map.Entry entry : xjVar.f20293f.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            if ((intValue2 & 2) != 0) {
                int i5 = intValue / 8;
                bArr[i5] = (byte) (bArr[i5] | (1 << (intValue % 8)));
            }
            if ((intValue2 & 4) != 0) {
                int i6 = intValue + i;
                int i7 = i6 / 8;
                bArr[i7] = (byte) ((1 << (i6 % 8)) | bArr[i7]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static byte[] af(xj[] xjVarArr, byte[] bArr) {
        int i = 0;
        int i2 = 0;
        for (xj xjVar : xjVarArr) {
            i2 += ((((xjVar.i * 2) + 7) & (-8)) / 8) + (xjVar.f20290c * 2) + av(xjVar.f20291d, bArr, xjVar.f20294g).getBytes(StandardCharsets.UTF_8).length + 16 + xjVar.f20292e;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i2);
        if (Arrays.equals(bArr, cux.q)) {
            int length = xjVarArr.length;
            while (i < length) {
                xj xjVar2 = xjVarArr[i];
                al(byteArrayOutputStream, xjVar2, av(xjVar2.f20291d, bArr, xjVar2.f20294g));
                ae(byteArrayOutputStream, xjVar2);
                i++;
            }
        } else {
            for (xj xjVar3 : xjVarArr) {
                al(byteArrayOutputStream, xjVar3, av(xjVar3.f20291d, bArr, xjVar3.f20294g));
            }
            int length2 = xjVarArr.length;
            while (i < length2) {
                ae(byteArrayOutputStream, xjVarArr[i]);
                i++;
            }
        }
        if (byteArrayOutputStream.size() == i2) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new IllegalStateException("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + i2);
    }

    public static boolean ag(Activity activity) {
        return activity.getResources().getBoolean(R.bool.google_play_privacy_policy_enabled) && dyd.az(activity) == 2;
    }

    public static void ah(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, 1);
        }
    }

    public static void ai(String str, Throwable th) {
        cfg cfgVar = q;
        if (cfgVar != null) {
            cfgVar.getClass();
            CrashReport.postCatchedException(new TUE(str, th));
        }
    }

    public static void aj(ByteArrayOutputStream byteArrayOutputStream, int i, xj xjVar) {
        int i2 = xjVar.i;
        byte[] bArr = new byte[(((Integer.bitCount(i & (-2)) * i2) + 7) & (-8)) / 8];
        for (Map.Entry entry : xjVar.f20293f.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            int i3 = 0;
            for (int i4 = 1; i4 <= 4; i4 <<= 1) {
                if (i4 != 1 && (i4 & i) != 0) {
                    if ((i4 & intValue2) == i4) {
                        int i5 = (i3 * i2) + intValue;
                        int i6 = i5 / 8;
                        bArr[i6] = (byte) ((1 << (i5 % 8)) | bArr[i6]);
                    }
                    i3++;
                }
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static xj[] ak(ByteArrayInputStream byteArrayInputStream, String str, int i) {
        if (byteArrayInputStream.available() == 0) {
            return new xj[0];
        }
        xj[] xjVarArr = new xj[i];
        for (int i2 = 0; i2 < i; i2++) {
            int w = (int) acw.w(byteArrayInputStream, 2);
            int w2 = (int) acw.w(byteArrayInputStream, 2);
            xjVarArr[i2] = new xj(str, new String(acw.bg(byteArrayInputStream, w), StandardCharsets.UTF_8), acw.w(byteArrayInputStream, 4), w2, (int) acw.w(byteArrayInputStream, 4), (int) acw.w(byteArrayInputStream, 4), new int[w2], new TreeMap());
        }
        int i3 = 0;
        while (i3 < i) {
            xj xjVar = xjVarArr[i3];
            int available = byteArrayInputStream.available();
            int i4 = xjVar.f20292e;
            int i5 = xjVar.i;
            TreeMap treeMap = xjVar.f20293f;
            int i6 = available - i4;
            int i7 = 0;
            while (byteArrayInputStream.available() > i6) {
                i7 += (int) acw.w(byteArrayInputStream, 2);
                treeMap.put(Integer.valueOf(i7), 1);
                int w3 = (int) acw.w(byteArrayInputStream, 2);
                while (w3 > 0) {
                    acw.w(byteArrayInputStream, 2);
                    int w4 = (int) acw.w(byteArrayInputStream, 1);
                    if (w4 != 6 && w4 != 7) {
                        while (w4 > 0) {
                            acw.w(byteArrayInputStream, 1);
                            int i8 = i3;
                            for (int w5 = (int) acw.w(byteArrayInputStream, 1); w5 > 0; w5--) {
                                acw.w(byteArrayInputStream, 2);
                            }
                            w4--;
                            i3 = i8;
                        }
                    }
                    w3--;
                    i3 = i3;
                }
            }
            int i9 = i3;
            if (byteArrayInputStream.available() != i6) {
                throw new IllegalStateException("Read too much data during profile line parse");
            }
            xjVar.f20288a = aw(byteArrayInputStream, xjVar.f20290c);
            BitSet valueOf = BitSet.valueOf(acw.bg(byteArrayInputStream, (((i5 * 2) + 7) & (-8)) / 8));
            for (int i10 = 0; i10 < i5; i10++) {
                int i11 = valueOf.get(i10) ? 2 : 0;
                if (valueOf.get(i10 + i5)) {
                    i11 |= 4;
                }
                if (i11 != 0) {
                    Integer num = (Integer) treeMap.get(Integer.valueOf(i10));
                    if (num == null) {
                        num = 0;
                    }
                    treeMap.put(Integer.valueOf(i10), Integer.valueOf(i11 | num.intValue()));
                }
            }
            i3 = i9 + 1;
        }
        return xjVarArr;
    }

    public static void al(ByteArrayOutputStream byteArrayOutputStream, xj xjVar, String str) {
        Charset charset = StandardCharsets.UTF_8;
        acw.v(byteArrayOutputStream, str.getBytes(charset).length);
        acw.v(byteArrayOutputStream, xjVar.f20290c);
        acw.ag(byteArrayOutputStream, xjVar.f20292e, 4);
        acw.ag(byteArrayOutputStream, xjVar.h, 4);
        acw.ag(byteArrayOutputStream, xjVar.i, 4);
        byteArrayOutputStream.write(str.getBytes(charset));
    }

    public static final Object am(dcy dcyVar, avu avuVar) {
        try {
            if (dcyVar.isDone()) {
                return zi.j(dcyVar);
            }
            gsn gsnVar = new gsn(1, awt.ab(avuVar));
            dcyVar.addListener(new cqr(dcyVar, gsnVar, 1), drj.INSTANCE);
            gsnVar.y(new fen(dcyVar));
            return gsnVar.z();
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause != null) {
                throw cause;
            }
            nj njVar = new nj();
            bff.l(njVar, bff.class.getName());
            throw njVar;
        }
    }

    public static xj[] an(FileInputStream fileInputStream, byte[] bArr, String str) {
        if (!Arrays.equals(bArr, cux.o)) {
            throw new IllegalStateException("Unsupported version");
        }
        int w = (int) acw.w(fileInputStream, 1);
        byte[] ay = acw.ay(fileInputStream, (int) acw.w(fileInputStream, 4), (int) acw.w(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(ay);
        try {
            xj[] ak = ak(byteArrayInputStream, str, w);
            byteArrayInputStream.close();
            return ak;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static Boolean ao(Object obj, Number number) {
        if ((obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte)) {
            int intValue = ((Number) obj).intValue();
            if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
                return Boolean.valueOf(intValue < number.intValue());
            }
            if (number instanceof Long) {
                return Boolean.valueOf(((long) intValue) < number.longValue());
            }
            if (number instanceof Float) {
                return Boolean.valueOf(((float) intValue) < number.floatValue());
            }
            if (number instanceof Double) {
                return Boolean.valueOf(((double) intValue) < number.doubleValue());
            }
            throw new UnsupportedOperationException(tn.s(number, "This type of addition operation is not supported"));
        }
        if (obj instanceof Long) {
            long longValue = ((Long) obj).longValue();
            if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
                return Boolean.valueOf(longValue < ((long) number.intValue()));
            }
            if (number instanceof Long) {
                return Boolean.valueOf(longValue < number.longValue());
            }
            if (number instanceof Float) {
                return Boolean.valueOf(((float) longValue) < number.floatValue());
            }
            if (number instanceof Double) {
                return Boolean.valueOf(((double) longValue) < number.doubleValue());
            }
            throw new UnsupportedOperationException(tn.s(number, "This type of addition operation is not supported"));
        }
        if (obj instanceof Float) {
            return z(((Float) obj).floatValue(), number);
        }
        if (!(obj instanceof Double)) {
            if (!(obj instanceof String)) {
                throw new UnsupportedOperationException(obj.getClass().getName().concat("This type of addition operation is not supported"));
            }
            try {
                return z(Float.parseFloat((String) obj), number);
            } catch (NumberFormatException unused) {
                throw new UnsupportedOperationException(obj.getClass().getName().concat("This type of addition operation is not supported"));
            }
        }
        double doubleValue = ((Double) obj).doubleValue();
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Boolean.valueOf(doubleValue < ((double) number.intValue()));
        }
        if (number instanceof Long) {
            return Boolean.valueOf(doubleValue < ((double) number.longValue()));
        }
        if (number instanceof Float) {
            return Boolean.valueOf(doubleValue < ((double) number.floatValue()));
        }
        if (number instanceof Double) {
            return Boolean.valueOf(doubleValue < number.doubleValue());
        }
        throw new UnsupportedOperationException(tn.s(number, "This type of addition operation is not supported"));
    }

    public static void ap(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                throw new RuntimeException("IOException occurred. ", e2);
            }
        }
    }

    public static /* synthetic */ boolean aq(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, afp afpVar, Object obj, Object obj2) {
        while (!atomicReferenceFieldUpdater.compareAndSet(afpVar, obj, obj2)) {
            if (atomicReferenceFieldUpdater.get(afpVar) != obj && atomicReferenceFieldUpdater.get(afpVar) != obj) {
                return false;
            }
        }
        return true;
    }

    public static void ar(ContextWrapper contextWrapper) {
        ctt cttVar = s;
        if (cttVar != null) {
            IdentityHashMap identityHashMap = (IdentityHashMap) cttVar.i;
            identityHashMap.remove(contextWrapper);
            if (identityHashMap.isEmpty()) {
                cttVar.h++;
                cttVar.f13490d = false;
                ((Handler) cttVar.f13491e).removeCallbacks((bzq) cttVar.f13487a);
                ((ark) cttVar.f13489c).f10717f.remove((bzq) cttVar.f13492f);
            }
        }
    }

    public static final int as(long[] jArr, int i, long j) {
        bff.p(jArr, "array");
        int i2 = i - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            long j2 = jArr[i4];
            if (j2 < j) {
                i3 = i4 + 1;
            } else {
                if (j2 <= j) {
                    return i4;
                }
                i2 = i4 - 1;
            }
        }
        return ~i3;
    }

    /* JADX WARN: Finally extract failed */
    public static boolean at(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, xj[] xjVarArr) {
        int length;
        byte[] bArr2 = cux.k;
        byte[] bArr3 = cux.v;
        byte[] bArr4 = cux.m;
        if (!Arrays.equals(bArr, bArr4)) {
            byte[] bArr5 = cux.o;
            if (Arrays.equals(bArr, bArr5)) {
                byte[] af = af(xjVarArr, bArr5);
                acw.ag(byteArrayOutputStream, xjVarArr.length, 1);
                acw.ag(byteArrayOutputStream, af.length, 4);
                byte[] az = acw.az(af);
                acw.ag(byteArrayOutputStream, az.length, 4);
                byteArrayOutputStream.write(az);
                return true;
            }
            if (Arrays.equals(bArr, bArr3)) {
                acw.ag(byteArrayOutputStream, xjVarArr.length, 1);
                for (xj xjVar : xjVarArr) {
                    int size = xjVar.f20293f.size() * 4;
                    String av = av(xjVar.f20291d, bArr3, xjVar.f20294g);
                    Charset charset = StandardCharsets.UTF_8;
                    acw.v(byteArrayOutputStream, av.getBytes(charset).length);
                    acw.v(byteArrayOutputStream, xjVar.f20288a.length);
                    acw.ag(byteArrayOutputStream, size, 4);
                    acw.ag(byteArrayOutputStream, xjVar.h, 4);
                    byteArrayOutputStream.write(av.getBytes(charset));
                    Iterator it = xjVar.f20293f.keySet().iterator();
                    while (it.hasNext()) {
                        acw.v(byteArrayOutputStream, ((Integer) it.next()).intValue());
                        acw.v(byteArrayOutputStream, 0);
                    }
                    for (int i : xjVar.f20288a) {
                        acw.v(byteArrayOutputStream, i);
                    }
                }
                return true;
            }
            byte[] bArr6 = cux.q;
            if (Arrays.equals(bArr, bArr6)) {
                byte[] af2 = af(xjVarArr, bArr6);
                acw.ag(byteArrayOutputStream, xjVarArr.length, 1);
                acw.ag(byteArrayOutputStream, af2.length, 4);
                byte[] az2 = acw.az(af2);
                acw.ag(byteArrayOutputStream, az2.length, 4);
                byteArrayOutputStream.write(az2);
                return true;
            }
            if (!Arrays.equals(bArr, bArr2)) {
                return false;
            }
            acw.v(byteArrayOutputStream, xjVarArr.length);
            for (xj xjVar2 : xjVarArr) {
                String str = xjVar2.f20291d;
                TreeMap treeMap = xjVar2.f20293f;
                String av2 = av(str, bArr2, xjVar2.f20294g);
                Charset charset2 = StandardCharsets.UTF_8;
                acw.v(byteArrayOutputStream, av2.getBytes(charset2).length);
                acw.v(byteArrayOutputStream, treeMap.size());
                acw.v(byteArrayOutputStream, xjVar2.f20288a.length);
                acw.ag(byteArrayOutputStream, xjVar2.h, 4);
                byteArrayOutputStream.write(av2.getBytes(charset2));
                Iterator it2 = treeMap.keySet().iterator();
                while (it2.hasNext()) {
                    acw.v(byteArrayOutputStream, ((Integer) it2.next()).intValue());
                }
                for (int i2 : xjVar2.f20288a) {
                    acw.v(byteArrayOutputStream, i2);
                }
            }
            return true;
        }
        ArrayList arrayList = new ArrayList(3);
        ArrayList arrayList2 = new ArrayList(3);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            acw.v(byteArrayOutputStream2, xjVarArr.length);
            int i3 = 2;
            for (xj xjVar3 : xjVarArr) {
                acw.ag(byteArrayOutputStream2, xjVar3.h, 4);
                acw.ag(byteArrayOutputStream2, xjVar3.f20289b, 4);
                acw.ag(byteArrayOutputStream2, xjVar3.i, 4);
                String av3 = av(xjVar3.f20291d, bArr4, xjVar3.f20294g);
                Charset charset3 = StandardCharsets.UTF_8;
                int length2 = av3.getBytes(charset3).length;
                acw.v(byteArrayOutputStream2, length2);
                i3 = i3 + 14 + length2;
                byteArrayOutputStream2.write(av3.getBytes(charset3));
            }
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            if (i3 != byteArray.length) {
                throw new IllegalStateException("Expected size " + i3 + ", does not match actual size " + byteArray.length);
            }
            al alVar = new al(fhu.DEX_FILES, byteArray, false);
            byteArrayOutputStream2.close();
            arrayList.add(alVar);
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i4 = 0;
            for (int i5 = 0; i5 < xjVarArr.length; i5++) {
                try {
                    xj xjVar4 = xjVarArr[i5];
                    acw.v(byteArrayOutputStream3, i5);
                    acw.v(byteArrayOutputStream3, xjVar4.f20290c);
                    i4 = i4 + 4 + (xjVar4.f20290c * 2);
                    int[] iArr = xjVar4.f20288a;
                    int length3 = iArr.length;
                    int i6 = 0;
                    int i7 = 0;
                    while (i6 < length3) {
                        int i8 = iArr[i6];
                        acw.v(byteArrayOutputStream3, i8 - i7);
                        i6++;
                        i7 = i8;
                    }
                } catch (Throwable th) {
                }
            }
            byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
            if (i4 != byteArray2.length) {
                throw new IllegalStateException("Expected size " + i4 + ", does not match actual size " + byteArray2.length);
            }
            al alVar2 = new al(fhu.CLASSES, byteArray2, true);
            byteArrayOutputStream3.close();
            arrayList.add(alVar2);
            byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i9 = 0;
            for (int i10 = 0; i10 < xjVarArr.length; i10++) {
                try {
                    xj xjVar5 = xjVarArr[i10];
                    Iterator it3 = xjVar5.f20293f.entrySet().iterator();
                    int i11 = 0;
                    while (it3.hasNext()) {
                        i11 |= ((Integer) ((Map.Entry) it3.next()).getValue()).intValue();
                    }
                    ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
                    try {
                        aj(byteArrayOutputStream4, i11, xjVar5);
                        byte[] byteArray3 = byteArrayOutputStream4.toByteArray();
                        byteArrayOutputStream4.close();
                        byteArrayOutputStream4 = new ByteArrayOutputStream();
                        try {
                            bd(byteArrayOutputStream4, xjVar5);
                            byte[] byteArray4 = byteArrayOutputStream4.toByteArray();
                            byteArrayOutputStream4.close();
                            acw.v(byteArrayOutputStream3, i10);
                            int length4 = byteArray3.length + 2 + byteArray4.length;
                            int i12 = i9 + 6;
                            acw.ag(byteArrayOutputStream3, length4, 4);
                            acw.v(byteArrayOutputStream3, i11);
                            byteArrayOutputStream3.write(byteArray3);
                            byteArrayOutputStream3.write(byteArray4);
                            i9 = i12 + length4;
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                    try {
                        byteArrayOutputStream3.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
            }
            byte[] byteArray5 = byteArrayOutputStream3.toByteArray();
            if (i9 != byteArray5.length) {
                throw new IllegalStateException("Expected size " + i9 + ", does not match actual size " + byteArray5.length);
            }
            al alVar3 = new al(fhu.METHODS, byteArray5, true);
            byteArrayOutputStream3.close();
            arrayList.add(alVar3);
            long j = 4;
            long size2 = j + j + 4 + (arrayList.size() * 16);
            acw.ag(byteArrayOutputStream, arrayList.size(), 4);
            for (int i13 = 0; i13 < arrayList.size(); i13++) {
                al alVar4 = (al) arrayList.get(i13);
                fhu fhuVar = alVar4.f10428a;
                byte[] bArr7 = alVar4.f10429b;
                acw.ag(byteArrayOutputStream, fhuVar.b(), 4);
                acw.ag(byteArrayOutputStream, size2, 4);
                if (alVar4.f10430c) {
                    long length5 = bArr7.length;
                    byte[] az3 = acw.az(bArr7);
                    arrayList2.add(az3);
                    acw.ag(byteArrayOutputStream, az3.length, 4);
                    acw.ag(byteArrayOutputStream, length5, 4);
                    length = az3.length;
                } else {
                    arrayList2.add(bArr7);
                    acw.ag(byteArrayOutputStream, bArr7.length, 4);
                    acw.ag(byteArrayOutputStream, 0L, 4);
                    length = bArr7.length;
                }
                size2 += length;
            }
            for (int i14 = 0; i14 < arrayList2.size(); i14++) {
                byteArrayOutputStream.write((byte[]) arrayList2.get(i14));
            }
            return true;
        } catch (Throwable th3) {
            try {
                byteArrayOutputStream2.close();
                throw th3;
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
                throw th3;
            }
        }
    }

    public static void au(Object obj, StringBuilder sb) {
        int lastIndexOf;
        if (obj == null) {
            sb.append("null");
            return;
        }
        String simpleName = obj.getClass().getSimpleName();
        if (simpleName.length() <= 0 && (lastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
            simpleName = simpleName.substring(lastIndexOf + 1);
        }
        sb.append(simpleName);
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(obj)));
    }

    public static String av(String str, byte[] bArr, String str2) {
        byte[] bArr2 = cux.v;
        byte[] bArr3 = cux.k;
        String str3 = (Arrays.equals(bArr, bArr3) || Arrays.equals(bArr, bArr2)) ? ":" : "!";
        if (str.length() <= 0) {
            if ("!".equals(str3)) {
                return str2.replace(":", "!");
            }
            if (":".equals(str3)) {
                return str2.replace("!", ":");
            }
        } else {
            if (str2.equals("classes.dex")) {
                return str;
            }
            if (str2.contains("!") || str2.contains(":")) {
                if ("!".equals(str3)) {
                    return str2.replace(":", "!");
                }
                if (":".equals(str3)) {
                    return str2.replace("!", ":");
                }
            } else if (!str2.endsWith(".apk")) {
                return awf.ad(awf.o(str), (Arrays.equals(bArr, bArr3) || Arrays.equals(bArr, bArr2)) ? ":" : "!", str2);
            }
        }
        return str2;
    }

    public static int[] aw(ByteArrayInputStream byteArrayInputStream, int i) {
        int[] iArr = new int[i];
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += (int) acw.w(byteArrayInputStream, 2);
            iArr[i3] = i2;
        }
        return iArr;
    }

    public static double ax(double d2, int i) {
        return Math.round(d2 * r0) / ((int) Math.pow(10.0d, i));
    }

    public static String ay(BigInteger bigInteger) {
        return bigInteger == null ? "" : bigInteger.toString(16);
    }

    public static /* synthetic */ boolean az(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, ail ailVar, Object obj, Object obj2) {
        while (!atomicReferenceFieldUpdater.compareAndSet(ailVar, obj, obj2)) {
            if (atomicReferenceFieldUpdater.get(ailVar) != obj && atomicReferenceFieldUpdater.get(ailVar) != obj) {
                return false;
            }
        }
        return true;
    }

    public static xj[] ba(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i, xj[] xjVarArr) {
        if (byteArrayInputStream.available() == 0) {
            return new xj[0];
        }
        if (i != xjVarArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        for (int i2 = 0; i2 < i; i2++) {
            acw.w(byteArrayInputStream, 2);
            String str = new String(acw.bg(byteArrayInputStream, (int) acw.w(byteArrayInputStream, 2)), StandardCharsets.UTF_8);
            long w = acw.w(byteArrayInputStream, 4);
            int w2 = (int) acw.w(byteArrayInputStream, 2);
            xj xjVar = null;
            if (xjVarArr.length > 0) {
                int indexOf = str.indexOf("!");
                if (indexOf < 0) {
                    indexOf = str.indexOf(":");
                }
                String substring = indexOf > 0 ? str.substring(indexOf + 1) : str;
                int i3 = 0;
                while (true) {
                    if (i3 >= xjVarArr.length) {
                        break;
                    }
                    if (xjVarArr[i3].f20294g.equals(substring)) {
                        xjVar = xjVarArr[i3];
                        break;
                    }
                    i3++;
                }
            }
            if (xjVar == null) {
                throw new IllegalStateException("Missing profile key: ".concat(str));
            }
            xjVar.f20289b = w;
            int[] aw = aw(byteArrayInputStream, w2);
            if (Arrays.equals(bArr, cux.k)) {
                xjVar.f20290c = w2;
                xjVar.f20288a = aw;
            }
        }
        return xjVarArr;
    }

    public static boolean bb(Object obj, ejn ejnVar) {
        boolean z;
        ctt cttVar = s;
        if (cttVar != null) {
            bes besVar = (bes) ((IdentityHashMap) cttVar.i).get(obj);
            if (besVar == null || ejnVar == null) {
                z = false;
            } else {
                besVar.f11407e = ejnVar;
                z = besVar.f11405c.ac() && !cttVar.f13493g && cttVar.l() && besVar.f11404b != 0 && SystemClock.uptimeMillis() - besVar.f11404b < 1500;
                cttVar.m(0L);
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public static boo bc() {
        boo booVar = boo.f11913f;
        bff.d(booVar);
        boo booVar2 = booVar.j;
        if (booVar2 == null) {
            long nanoTime = System.nanoTime();
            boo.f11914g.await(boo.h, TimeUnit.MILLISECONDS);
            boo booVar3 = boo.f11913f;
            bff.d(booVar3);
            if (booVar3.j != null || System.nanoTime() - nanoTime < boo.f11912e) {
                return null;
            }
            return boo.f11913f;
        }
        long nanoTime2 = booVar2.k - System.nanoTime();
        if (nanoTime2 > 0) {
            boo.f11914g.await(nanoTime2, TimeUnit.NANOSECONDS);
            return null;
        }
        boo booVar4 = boo.f11913f;
        bff.d(booVar4);
        booVar4.j = booVar2.j;
        booVar2.j = null;
        return booVar2;
    }

    public static void bd(ByteArrayOutputStream byteArrayOutputStream, xj xjVar) {
        int i = 0;
        for (Map.Entry entry : xjVar.f20293f.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                acw.v(byteArrayOutputStream, intValue - i);
                acw.v(byteArrayOutputStream, 0);
                i = intValue;
            }
        }
    }

    public static String v(int i) {
        switch (i) {
            case -1:
                return "SUCCESS_CACHE";
            case 0:
                return "SUCCESS";
            case 1:
            case 9:
            case 11:
            case 12:
            default:
                return awf.ac(i, "unknown status code: ");
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 10:
                return "DEVELOPER_ERROR";
            case 13:
                return "ERROR";
            case 14:
                return "INTERRUPTED";
            case 15:
                return "TIMEOUT";
            case 16:
                return "CANCELED";
            case 17:
                return "API_NOT_CONNECTED";
            case 18:
                return "DEAD_CLIENT";
            case 19:
                return "REMOTE_EXCEPTION";
            case 20:
                return "CONNECTION_SUSPENDED_DURING_CALL";
            case 21:
                return "RECONNECTION_TIMED_OUT_DURING_UPDATE";
            case 22:
                return "RECONNECTION_TIMED_OUT";
        }
    }

    public static final int w(int i, int i2, int[] iArr) {
        bff.p(iArr, "array");
        int i3 = i - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i2) {
                i4 = i5 + 1;
            } else {
                if (i6 <= i2) {
                    return i5;
                }
                i3 = i5 - 1;
            }
        }
        return ~i4;
    }

    public static xj[] x(ByteArrayInputStream byteArrayInputStream, int i, xj[] xjVarArr) {
        if (byteArrayInputStream.available() == 0) {
            return new xj[0];
        }
        if (i != xjVarArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        String[] strArr = new String[i];
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            int w = (int) acw.w(byteArrayInputStream, 2);
            iArr[i2] = (int) acw.w(byteArrayInputStream, 2);
            strArr[i2] = new String(acw.bg(byteArrayInputStream, w), StandardCharsets.UTF_8);
        }
        for (int i3 = 0; i3 < i; i3++) {
            xj xjVar = xjVarArr[i3];
            if (!xjVar.f20294g.equals(strArr[i3])) {
                throw new IllegalStateException("Order of dexfiles in metadata did not match baseline");
            }
            int i4 = iArr[i3];
            xjVar.f20290c = i4;
            xjVar.f20288a = aw(byteArrayInputStream, i4);
        }
        return xjVarArr;
    }

    public static void y(String str) {
        cfg cfgVar = q;
        if (cfgVar != null) {
            cfgVar.getClass();
            CrashReport.postCatchedException(new TUE(str));
        }
    }

    public static Boolean z(float f2, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Boolean.valueOf(f2 < ((float) number.intValue()));
        }
        if (number instanceof Long) {
            return Boolean.valueOf(f2 < ((float) number.longValue()));
        }
        if (number instanceof Float) {
            return Boolean.valueOf(f2 < number.floatValue());
        }
        if (number instanceof Double) {
            return Boolean.valueOf(((double) f2) < number.doubleValue());
        }
        throw new UnsupportedOperationException(tn.s(number, "This type of addition operation is not supported"));
    }

    @Override // g.se
    public Set a(Class cls) {
        return (Set) d(cls).get();
    }

    @Override // g.se
    public Object b(Class cls) {
        boa c2 = c(cls);
        if (c2 == null) {
            return null;
        }
        return c2.get();
    }

    public abstract int be(ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract float bf(int i);

    public abstract void bg(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2);

    public abstract int bh();

    public abstract boolean bi(float f2, float f3);

    public abstract boolean bj(View view);

    public abstract int bk(View view);

    public abstract int bl(CoordinatorLayout coordinatorLayout);

    public abstract int bm();

    public abstract boolean bn(View view, float f2);

    public abstract boolean bo(float f2);

    public abstract int bp();

    public abstract int bq();

    public abstract int br();
}
