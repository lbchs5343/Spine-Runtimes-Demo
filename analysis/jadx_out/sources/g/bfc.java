package g;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.Shader;
import android.net.NetworkRequest;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public abstract class bfc {

    /* renamed from: a, reason: collision with root package name */
    public static final hy f11436a = new hy("REMOVED_TASK", 1);

    /* renamed from: b, reason: collision with root package name */
    public static final hy f11437b = new hy("CLOSED_EMPTY", 1);

    /* renamed from: c, reason: collision with root package name */
    public static final Object f11438c = new Object();

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
    
        if (r9.bottom <= r11.top) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0042, code lost:
    
        if (r8 == 17) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
    
        if (r8 != 66) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
    
        r10 = w(r8, r9, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004b, code lost:
    
        if (r8 == 17) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004d, code lost:
    
        if (r8 == 33) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004f, code lost:
    
        if (r8 == 66) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0051, code lost:
    
        if (r8 != 130) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0053, code lost:
    
        r8 = r11.bottom;
        r9 = r9.bottom;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0072, code lost:
    
        if (r10 >= java.lang.Math.max(1, r8 - r9)) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
    
        throw new java.lang.IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005f, code lost:
    
        r8 = r11.right;
        r9 = r9.right;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0064, code lost:
    
        r8 = r9.top;
        r9 = r11.top;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0069, code lost:
    
        r8 = r9.left;
        r9 = r11.left;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0032, code lost:
    
        if (r9.right <= r11.left) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0039, code lost:
    
        if (r9.top >= r11.bottom) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0040, code lost:
    
        if (r9.left >= r11.right) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean aa(int i, Rect rect, Rect rect2, Rect rect3) {
        boolean ag = ag(i, rect, rect2);
        if (ag(i, rect, rect3) || !ag) {
            return false;
        }
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
        }
        return true;
    }

    public static String ab(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (n(xmlPullParser, str)) {
            return typedArray.getString(i);
        }
        return null;
    }

    public static boolean ac(Context context) {
        boolean canDrawOverlays;
        if (dyd.ar(23)) {
            return true;
        }
        canDrawOverlays = Settings.canDrawOverlays(context);
        return canDrawOverlays;
    }

    public static TypedValue ad(Context context, int i, String str) {
        TypedValue i2 = i(context, i);
        if (i2 != null) {
            return i2;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i)));
    }

    public static String ae(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }

    public static String af(cyb cybVar) {
        StringBuilder sb = new StringBuilder(cybVar.c());
        for (int i = 0; i < cybVar.c(); i++) {
            byte a2 = cybVar.a(i);
            if (a2 == 34) {
                sb.append("\\\"");
            } else if (a2 == 39) {
                sb.append("\\'");
            } else if (a2 != 92) {
                switch (a2) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (a2 < 32 || a2 > 126) {
                            sb.append('\\');
                            sb.append((char) (((a2 >>> 6) & 3) + 48));
                            sb.append((char) (((a2 >>> 3) & 7) + 48));
                            sb.append((char) ((a2 & 7) + 48));
                            break;
                        } else {
                            sb.append((char) a2);
                            break;
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static boolean ag(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    public static void ah(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=".concat(String.valueOf(obj2)));
        }
        if (obj2 == null) {
            throw new NullPointerException(tn.ad("null value in entry: ", obj.toString(), "=null"));
        }
    }

    public static final im ai(byte[] bArr) {
        bff.p(bArr, "bytes");
        if (Build.VERSION.SDK_INT < 28 || bArr.length == 0) {
            return new im(null);
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
            try {
                int readInt = objectInputStream.readInt();
                int[] iArr = new int[readInt];
                for (int i = 0; i < readInt; i++) {
                    iArr[i] = objectInputStream.readInt();
                }
                int readInt2 = objectInputStream.readInt();
                int[] iArr2 = new int[readInt2];
                for (int i2 = 0; i2 < readInt2; i2++) {
                    iArr2[i2] = objectInputStream.readInt();
                }
                im ac = bff.ac(iArr2, iArr);
                objectInputStream.close();
                byteArrayInputStream.close();
                return ac;
            } finally {
            }
        } finally {
        }
    }

    public static TypedArray aj(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public static gjr ak(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            throw tn.c(it);
        }
        return gjr.ALLOW;
    }

    public static boolean al(int i, Rect rect, Rect rect2) {
        if (i == 17) {
            int i2 = rect.right;
            int i3 = rect2.right;
            return (i2 > i3 || rect.left >= i3) && rect.left > rect2.left;
        }
        if (i == 33) {
            int i4 = rect.bottom;
            int i5 = rect2.bottom;
            return (i4 > i5 || rect.top >= i5) && rect.top > rect2.top;
        }
        if (i == 66) {
            int i6 = rect.left;
            int i7 = rect2.left;
            return (i6 < i7 || rect.right <= i7) && rect.right < rect2.right;
        }
        if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        int i8 = rect.top;
        int i9 = rect2.top;
        return (i8 < i9 || rect.bottom <= i9) && rect.bottom < rect2.bottom;
    }

    public static boolean d(Context context, int i, boolean z) {
        TypedValue i2 = i(context, i);
        return (i2 == null || i2.type != 18) ? z : i2.data != 0;
    }

    public static gbb e(dbd dbdVar) {
        eje ejeVar = new eje();
        ejeVar.f15642d = new frr();
        gbb gbbVar = new gbb(ejeVar);
        ejeVar.f15641c = gbbVar;
        ejeVar.f15640b = dbdVar.getClass();
        try {
            Object g2 = dbdVar.g(ejeVar);
            if (g2 == null) {
                return gbbVar;
            }
            ejeVar.f15640b = g2;
            return gbbVar;
        } catch (Exception e2) {
            gbbVar.f17842b.m(e2);
            return gbbVar;
        }
    }

    public static String f(String str, String str2) {
        bff.p(str, "tableName");
        bff.p(str2, "triggerType");
        return "`room_table_modification_trigger_" + str + '_' + str2 + '`';
    }

    public static void g(int i, String str) {
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i);
    }

    public static final ahc h(int i) {
        if (i == 0) {
            return ahc.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        }
        if (i == 1) {
            return ahc.DROP_WORK_REQUEST;
        }
        throw new IllegalArgumentException(awf.b(i, "Could not convert ", " to OutOfQuotaPolicy"));
    }

    public static TypedValue i(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static gey j(fb fbVar, bsa bsaVar, dpa dpaVar, ArrayList arrayList) {
        String str = bsaVar.f12108a;
        if (fbVar.zzt(str)) {
            gey zzf = fbVar.zzf(str);
            if (zzf instanceof fdk) {
                return ((fdk) zzf).e(dpaVar, arrayList);
            }
            throw new IllegalArgumentException(awf.c(str, " is not a function"));
        }
        if (!"hasOwnProperty".equals(str)) {
            throw new IllegalArgumentException(tn.x("Object has no function ", str));
        }
        byh.ah(1, "hasOwnProperty", arrayList);
        return fbVar.zzt(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0)).zzi()) ? gey.j : gey.m;
    }

    public static final dnx k(int i) {
        if (i == 0) {
            return dnx.NOT_REQUIRED;
        }
        if (i == 1) {
            return dnx.CONNECTED;
        }
        if (i == 2) {
            return dnx.UNMETERED;
        }
        if (i == 3) {
            return dnx.NOT_ROAMING;
        }
        if (i == 4) {
            return dnx.METERED;
        }
        if (Build.VERSION.SDK_INT < 30 || i != 5) {
            throw new IllegalArgumentException(awf.b(i, "Could not convert ", " to NetworkType"));
        }
        return dnx.TEMPORARILY_UNMETERED;
    }

    public static final LinkedHashSet l(byte[] bArr) {
        ObjectInputStream objectInputStream;
        bff.p(bArr, "bytes");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (bArr.length == 0) {
            return linkedHashSet;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            try {
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
            } finally {
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        try {
            int readInt = objectInputStream.readInt();
            for (int i = 0; i < readInt; i++) {
                Uri parse = Uri.parse(objectInputStream.readUTF());
                boolean readBoolean = objectInputStream.readBoolean();
                bff.e(parse, "uri");
                linkedHashSet.add(new cdc(parse, readBoolean));
            }
            objectInputStream.close();
            byteArrayInputStream.close();
            return linkedHashSet;
        } finally {
        }
    }

    public static final byte[] m(Set set) {
        bff.p(set, "triggers");
        if (set.isEmpty()) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeInt(set.size());
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    cdc cdcVar = (cdc) it.next();
                    objectOutputStream.writeUTF(cdcVar.f12678a.toString());
                    objectOutputStream.writeBoolean(cdcVar.f12679b);
                }
                objectOutputStream.close();
                byteArrayOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                bff.e(byteArray, "outputStream.toByteArray()");
                return byteArray;
            } finally {
            }
        } finally {
        }
    }

    public static boolean n(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    public static void o(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static final void p(gob gobVar) {
        int i = gobVar.f18483b;
        int[] iArr = gobVar.f18485d;
        Object[] objArr = gobVar.f18482a;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f11438c) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        gobVar.f18484c = false;
        gobVar.f18483b = i2;
    }

    public static int q(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
        }
        return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
    }

    public static final int r(gys gysVar) {
        bff.p(gysVar, "state");
        switch (ejx.f15692b[gysVar.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            default:
                throw new dwb();
        }
    }

    public static void s(Context context, AlertDialog alertDialog) {
        if (context == null || alertDialog == null) {
            return;
        }
        if ((context instanceof Activity) && ((Activity) context).isFinishing()) {
            return;
        }
        alertDialog.show();
    }

    public static boj t(erz erzVar, efi efiVar) {
        bff.p(efiVar, "key");
        return bff.n(erzVar.getKey(), efiVar) ? cgq.f12850a : erzVar;
    }

    public static final int u(dnx dnxVar) {
        bff.p(dnxVar, "networkType");
        int i = ejx.f15694d[dnxVar.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 3) {
            return 2;
        }
        if (i == 4) {
            return 3;
        }
        if (i == 5) {
            return 4;
        }
        if (Build.VERSION.SDK_INT >= 30 && dnxVar == dnx.TEMPORARILY_UNMETERED) {
            return 5;
        }
        throw new IllegalArgumentException("Could not convert " + dnxVar + " to int");
    }

    public static final byte[] v(im imVar) {
        int[] bi;
        boolean hasTransport;
        int[] bi2;
        boolean hasCapability;
        bff.p(imVar, "requestCompat");
        int i = Build.VERSION.SDK_INT;
        if (i < 28) {
            return new byte[0];
        }
        NetworkRequest networkRequest = (NetworkRequest) imVar.f19435b;
        if (networkRequest == null) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                if (i >= 31) {
                    bi = networkRequest.getTransportTypes();
                    bff.e(bi, "request.transportTypes");
                } else {
                    int[] iArr = {2, 0, 3, 6, 10, 9, 8, 4, 1, 5};
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < 10; i2++) {
                        int i3 = iArr[i2];
                        hasTransport = networkRequest.hasTransport(i3);
                        if (hasTransport) {
                            arrayList.add(Integer.valueOf(i3));
                        }
                    }
                    bi = gsv.bi(arrayList);
                }
                if (Build.VERSION.SDK_INT >= 31) {
                    bi2 = networkRequest.getCapabilities();
                    bff.e(bi2, "request.capabilities");
                } else {
                    int[] iArr2 = {17, 5, 2, 10, 29, 19, 3, 32, 7, 4, 12, 36, 23, 0, 33, 20, 11, 13, 18, 21, 15, 35, 34, 8, 1, 25, 14, 16, 6, 9};
                    ArrayList arrayList2 = new ArrayList();
                    for (int i4 = 0; i4 < 30; i4++) {
                        int i5 = iArr2[i4];
                        hasCapability = networkRequest.hasCapability(i5);
                        if (hasCapability) {
                            arrayList2.add(Integer.valueOf(i5));
                        }
                    }
                    bi2 = gsv.bi(arrayList2);
                }
                objectOutputStream.writeInt(bi.length);
                for (int i6 : bi) {
                    objectOutputStream.writeInt(i6);
                }
                objectOutputStream.writeInt(bi2.length);
                for (int i7 : bi2) {
                    objectOutputStream.writeInt(i7);
                }
                objectOutputStream.close();
                byteArrayOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                bff.e(byteArray, "outputStream.toByteArray()");
                return byteArray;
            } finally {
            }
        } finally {
        }
    }

    public static int w(int i, Rect rect, Rect rect2) {
        int i2;
        int i3;
        if (i == 17) {
            i2 = rect.left;
            i3 = rect2.right;
        } else if (i == 33) {
            i2 = rect.top;
            i3 = rect2.bottom;
        } else if (i == 66) {
            i2 = rect2.left;
            i3 = rect.right;
        } else {
            if (i != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            i2 = rect2.top;
            i3 = rect.bottom;
        }
        return Math.max(0, i2 - i3);
    }

    public static final gys x(int i) {
        if (i == 0) {
            return gys.ENQUEUED;
        }
        if (i == 1) {
            return gys.RUNNING;
        }
        if (i == 2) {
            return gys.SUCCEEDED;
        }
        if (i == 3) {
            return gys.FAILED;
        }
        if (i == 4) {
            return gys.BLOCKED;
        }
        if (i == 5) {
            return gys.CANCELLED;
        }
        throw new IllegalArgumentException(awf.b(i, "Could not convert ", " to State"));
    }

    public static final ay y(int i) {
        if (i == 0) {
            return ay.EXPONENTIAL;
        }
        if (i == 1) {
            return ay.LINEAR;
        }
        throw new IllegalArgumentException(awf.b(i, "Could not convert ", " to BackoffPolicy"));
    }

    public static dsg z(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i) {
        dsg dsgVar;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i2 = typedValue.type;
            if (i2 >= 28 && i2 <= 31) {
                return new dsg((Shader) null, (ColorStateList) null, typedValue.data);
            }
            try {
                dsgVar = dsg.f(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            } catch (Exception e2) {
                Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e2);
                dsgVar = null;
            }
            if (dsgVar != null) {
                return dsgVar;
            }
        }
        return new dsg((Shader) null, (ColorStateList) null, 0);
    }
}
