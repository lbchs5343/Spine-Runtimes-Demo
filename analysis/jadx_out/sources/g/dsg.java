package g;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import androidx.work.impl.WorkDatabase_Impl;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzaca;
import com.google.android.gms.internal.ads.zzacb;
import com.google.android.gms.internal.ads.zzacs;
import com.google.android.gms.internal.ads.zzacv;
import com.google.android.gms.internal.ads.zzacx;
import com.google.android.gms.internal.ads.zzacy;
import com.google.android.gms.internal.ads.zzadc;
import com.google.android.gms.internal.ads.zzaoc;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzek;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzwa;
import java.io.File;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.TreeMap;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class dsg implements zzacb {

    /* renamed from: a, reason: collision with root package name */
    public Object f14704a;

    /* renamed from: b, reason: collision with root package name */
    public Object f14705b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f14706c;

    /* renamed from: d, reason: collision with root package name */
    public int f14707d;

    public /* synthetic */ dsg() {
        this.f14706c = 9;
    }

    public dsg(int i, zzek zzekVar) {
        this.f14706c = 7;
        this.f14707d = i;
        this.f14704a = zzekVar;
        this.f14705b = new zzed();
    }

    public dsg(int i, String str, String str2) {
        this.f14706c = 3;
        this.f14707d = i;
        this.f14704a = str;
        this.f14705b = str2;
    }

    public dsg(int i, String str, ArrayList arrayList, ArrayList arrayList2) {
        this.f14706c = 8;
        this.f14707d = i;
        this.f14705b = str;
        this.f14704a = arrayList;
    }

    public dsg(Shader shader, ColorStateList colorStateList, int i) {
        this.f14706c = 0;
        this.f14704a = shader;
        this.f14705b = colorStateList;
        this.f14707d = i;
    }

    public /* synthetic */ dsg(zzadc zzadcVar, int i) {
        this.f14706c = 6;
        this.f14704a = zzadcVar;
        this.f14707d = i;
        this.f14705b = new zzacx();
    }

    public dsg(zzwa zzwaVar) {
        this.f14706c = 10;
        this.f14704a = new SparseArray();
        this.f14705b = zzwaVar;
        this.f14707d = -1;
    }

    public dsg(aqt aqtVar, int i, String str) {
        this.f14706c = 4;
        bff.p(aqtVar, "protocol");
        this.f14704a = aqtVar;
        this.f14707d = i;
        this.f14705b = str;
    }

    public dsg(eyc eycVar, int i) {
        this.f14706c = 2;
        this.f14705b = eycVar;
        this.f14707d = i;
        ByteBuffer duplicate = eycVar.f16361d.duplicate();
        duplicate.order(ByteOrder.LITTLE_ENDIAN);
        duplicate.position(i);
        this.f14704a = duplicate;
    }

    public dsg(hda hdaVar, evf evfVar) {
        this.f14706c = 1;
        this.f14706c = 1;
        this.f14707d = 23;
        this.f14704a = hdaVar;
        this.f14705b = evfVar;
    }

    public dsg(String str, int i) {
        this.f14706c = 5;
        this.f14704a = str;
        this.f14705b = str.toCharArray();
        this.f14707d = i;
    }

    private final /* synthetic */ void ab() {
    }

    public static void e(String str) {
        if (str.equalsIgnoreCase(":memory:")) {
            return;
        }
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = bff.ad(str.charAt(!z ? i : length), 32) <= 0;
            if (z) {
                if (!z2) {
                    break;
                } else {
                    length--;
                }
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        if (str.subSequence(i, length + 1).toString().length() == 0) {
            return;
        }
        try {
            SQLiteDatabase.deleteDatabase(new File(str));
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01e2, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01da, code lost:
    
        if (r13.size() <= 0) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01dc, code lost:
    
        r0 = new g.clx(r13, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01e3, code lost:
    
        if (r0 == null) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01f5, code lost:
    
        if (r11 == 1) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01f8, code lost:
    
        if (r11 == 2) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01fa, code lost:
    
        r16 = (int[]) r0.f13103e;
        r17 = (float[]) r0.f13101c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0208, code lost:
    
        if (r10 == 1) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x020a, code lost:
    
        if (r10 == 2) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x020c, code lost:
    
        r0 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x021f, code lost:
    
        r11 = new android.graphics.LinearGradient(r21, r22, r26, r27, r16, r17, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0268, code lost:
    
        return new g.dsg(r11, (android.content.res.ColorStateList) null, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0219, code lost:
    
        r0 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x021c, code lost:
    
        r0 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0223, code lost:
    
        r11 = new android.graphics.SweepGradient(r8, r9, (int[]) r0.f13103e, (float[]) r0.f13101c);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0235, code lost:
    
        if (r25 <= com.bytedance.sdk.openadsdk.TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0237, code lost:
    
        r20 = (int[]) r0.f13103e;
        r21 = (float[]) r0.f13101c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0246, code lost:
    
        if (r10 == 1) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0249, code lost:
    
        if (r10 == 2) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x024b, code lost:
    
        r0 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x025c, code lost:
    
        r11 = new android.graphics.RadialGradient(r8, r9, r25, r20, r21, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0256, code lost:
    
        r0 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0259, code lost:
    
        r0 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0270, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01e7, code lost:
    
        if (r20 == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01e9, code lost:
    
        r0 = new g.clx(r6, r5, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01ef, code lost:
    
        r0 = new g.clx(r6, r12);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static dsg f(Resources resources, int i, Resources.Theme theme) {
        int next;
        float f2;
        int i2;
        float f3;
        int i3;
        float f4;
        XmlResourceParser xml = resources.getXml(i);
        AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xml.getName();
        name.getClass();
        if (!name.equals("gradient")) {
            if (name.equals("selector")) {
                ColorStateList c2 = po.c(resources, xml, asAttributeSet, theme);
                return new dsg((Shader) null, c2, c2.getDefaultColor());
            }
            throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
        }
        String name2 = xml.getName();
        if (!name2.equals("gradient")) {
            throw new XmlPullParserException(xml.getPositionDescription() + ": invalid gradient color tag " + name2);
        }
        TypedArray aj = bfc.aj(resources, theme, asAttributeSet, glo.f18357b);
        float f5 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "startX") != null ? aj.getFloat(8, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f6 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "startY") != null ? aj.getFloat(9, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f7 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "endX") != null ? aj.getFloat(10, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f8 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "endY") != null ? aj.getFloat(11, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f9 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "centerX") != null ? aj.getFloat(3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f10 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "centerY") != null ? aj.getFloat(4, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        int i4 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "type") != null ? aj.getInt(2, 0) : 0;
        int color = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "startColor") != null ? aj.getColor(0, 0) : 0;
        boolean z = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "centerColor") != null;
        int color2 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "centerColor") != null ? aj.getColor(7, 0) : 0;
        if (xml.getAttributeValue("http://schemas.android.com/apk/res/android", "endColor") != null) {
            f2 = f5;
            i2 = aj.getColor(1, 0);
        } else {
            f2 = f5;
            i2 = 0;
        }
        if (xml.getAttributeValue("http://schemas.android.com/apk/res/android", "tileMode") != null) {
            f3 = f6;
            i3 = aj.getInt(6, 0);
        } else {
            f3 = f6;
            i3 = 0;
        }
        float f11 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "gradientRadius") != null ? aj.getFloat(5, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        aj.recycle();
        int depth = xml.getDepth() + 1;
        ArrayList arrayList = new ArrayList(20);
        float f12 = f11;
        ArrayList arrayList2 = new ArrayList(20);
        while (true) {
            int next2 = xml.next();
            float f13 = f7;
            if (next2 == 1) {
                f4 = f8;
                break;
            }
            int depth2 = xml.getDepth();
            f4 = f8;
            if (depth2 < depth && next2 == 3) {
                break;
            }
            if (next2 == 2 && depth2 <= depth && xml.getName().equals("item")) {
                TypedArray aj2 = bfc.aj(resources, theme, asAttributeSet, glo.f18359d);
                boolean hasValue = aj2.hasValue(0);
                boolean hasValue2 = aj2.hasValue(1);
                if (!hasValue || !hasValue2) {
                    break;
                }
                int color3 = aj2.getColor(0, 0);
                float f14 = aj2.getFloat(1, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                aj2.recycle();
                arrayList2.add(Integer.valueOf(color3));
                arrayList.add(Float.valueOf(f14));
            }
            f7 = f13;
            f8 = f4;
        }
        throw new XmlPullParserException(xml.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
    }

    public int aa() {
        return ((ByteBuffer) this.f14704a).get() & 255;
    }

    public String g(int i) {
        if (i == -1) {
            return null;
        }
        m((i * 4) + ((eyc) this.f14705b).f16358a.f10767b);
        return z(((ByteBuffer) this.f14704a).getInt());
    }

    public void h(crd crdVar) {
        evf evfVar = (evf) this.f14705b;
        Cursor k = crdVar.k("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = false;
            if (k.moveToFirst()) {
                if (k.getInt(0) == 0) {
                    z = true;
                }
            }
            k.close();
            evf.h(crdVar);
            if (!z) {
                agu j = evf.j(crdVar);
                if (!j.f10198b) {
                    throw new IllegalStateException("Pre-packaged database has an invalid schema: " + j.f10197a);
                }
            }
            n(crdVar);
            List list = ((WorkDatabase_Impl) evfVar.f16224f).ae;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((csa) it.next()).getClass();
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ckd.n(k, th);
                throw th2;
            }
        }
    }

    public void i() {
        ((ByteBuffer) this.f14704a).getInt();
    }

    public void j(int i) {
        ((ByteBuffer) this.f14704a).position(this.f14707d + i);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0086 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void k(crd crdVar) {
        boolean z;
        dbe dbeVar;
        Cursor k = crdVar.k("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            if (k.moveToFirst()) {
                if (k.getInt(0) != 0) {
                    z = true;
                    k.close();
                    if (z) {
                        agu j = evf.j(crdVar);
                        if (!j.f10198b) {
                            throw new IllegalStateException("Pre-packaged database has an invalid schema: " + j.f10197a);
                        }
                        n(crdVar);
                    } else {
                        Cursor i = crdVar.i(new abq("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1", 1));
                        try {
                            String string = i.moveToFirst() ? i.getString(0) : null;
                            i.close();
                            if (!"86254750241babac4b8d52996a675549".equals(string) && !"1cbd3130fa23b59692c061c594c16cc0".equals(string)) {
                                throw new IllegalStateException(tn.x("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: 86254750241babac4b8d52996a675549, found: ", string));
                            }
                        } finally {
                        }
                    }
                    evf evfVar = (evf) this.f14705b;
                    ((WorkDatabase_Impl) evfVar.f16224f).y = crdVar;
                    crdVar.j("PRAGMA foreign_keys = ON");
                    dbeVar = ((WorkDatabase_Impl) evfVar.f16224f).x;
                    dbeVar.getClass();
                    synchronized (dbeVar.f13912e) {
                        if (dbeVar.n) {
                            Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                        } else {
                            crdVar.j("PRAGMA temp_store = MEMORY;");
                            crdVar.j("PRAGMA recursive_triggers='ON';");
                            crdVar.j("CREATE TEMP TABLE room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
                            dbeVar.o(crdVar);
                            dbeVar.f13909b = crdVar.f("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1");
                            dbeVar.n = true;
                        }
                    }
                    List<csa> list = ((WorkDatabase_Impl) evfVar.f16224f).ae;
                    if (list != null) {
                        for (csa csaVar : list) {
                            csaVar.getClass();
                            crdVar.l();
                            try {
                                StringBuilder sb = new StringBuilder("DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < ");
                                csaVar.f13411a.getClass();
                                sb.append(System.currentTimeMillis() - aai.f9849a);
                                sb.append(" AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))");
                                crdVar.j(sb.toString());
                                crdVar.h();
                            } finally {
                                crdVar.g();
                            }
                        }
                    }
                    this.f14704a = null;
                    return;
                }
            }
            z = false;
            k.close();
            if (z) {
            }
            evf evfVar2 = (evf) this.f14705b;
            ((WorkDatabase_Impl) evfVar2.f16224f).y = crdVar;
            crdVar.j("PRAGMA foreign_keys = ON");
            dbeVar = ((WorkDatabase_Impl) evfVar2.f16224f).x;
            dbeVar.getClass();
            synchronized (dbeVar.f13912e) {
            }
        } finally {
        }
    }

    public int l(flq flqVar, int i) {
        m((i * 8) + ((eyc) this.f14705b).f16358a.f10768c);
        int q = q();
        int q2 = q();
        int i2 = ((ByteBuffer) this.f14704a).getInt();
        flqVar.h = g(q2);
        flqVar.f17000b = z(i2);
        return q;
    }

    public void m(int i) {
        ((ByteBuffer) this.f14704a).position(i);
    }

    public void n(crd crdVar) {
        crdVar.j("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        crdVar.j("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '86254750241babac4b8d52996a675549')");
    }

    public Object o(int i) {
        SparseArray sparseArray = (SparseArray) this.f14704a;
        if (this.f14707d == -1) {
            this.f14707d = 0;
        }
        while (true) {
            int i2 = this.f14707d;
            if (i2 > 0 && i < sparseArray.keyAt(i2)) {
                this.f14707d--;
            }
        }
        while (this.f14707d < sparseArray.size() - 1 && i >= sparseArray.keyAt(this.f14707d + 1)) {
            this.f14707d++;
        }
        return sparseArray.valueAt(this.f14707d);
    }

    public dnp p(int i) {
        List w;
        m((i * 12) + ((eyc) this.f14705b).f16358a.f10770e);
        x(4);
        ByteBuffer byteBuffer = (ByteBuffer) this.f14704a;
        int i2 = byteBuffer.getInt();
        int i3 = byteBuffer.getInt();
        if (i3 == 0) {
            w = Collections.EMPTY_LIST;
        } else {
            byteBuffer.position(i3);
            w = w();
        }
        return new dnp(w, g(i2));
    }

    public int q() {
        return ((ByteBuffer) this.f14704a).getShort() & 65535;
    }

    public int r() {
        int i;
        int i2 = 0;
        int i3 = 0;
        int i4 = -1;
        do {
            int aa = aa();
            i2 |= (aa & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE) << (i3 * 7);
            i4 <<= 7;
            i3++;
            i = aa & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
            if (i != 128) {
                break;
            }
        } while (i3 < 5);
        if (i != 128) {
            return ((i4 >> 1) & i2) != 0 ? i2 | i4 : i2;
        }
        throw new beo("Invalid LEB128 sequence");
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0083 A[EDGE_INSN: B:86:0x0083->B:69:0x0083 BREAK  A[LOOP:3: B:48:0x0022->B:70:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void s(crd crdVar, int i, int i2) {
        Set set;
        Iterable iterable;
        TreeMap treeMap;
        boolean z;
        evf evfVar = (evf) this.f14705b;
        hda hdaVar = (hda) this.f14704a;
        if (hdaVar != null) {
            frk frkVar = hdaVar.f19253d;
            frkVar.getClass();
            if (i == i2) {
                iterable = fai.f16469a;
            } else {
                boolean z2 = i2 > i;
                ArrayList arrayList = new ArrayList();
                int i3 = i;
                do {
                    if (z2) {
                        if (i3 >= i2) {
                            iterable = arrayList;
                            break;
                        }
                        treeMap = (TreeMap) frkVar.f17292a.get(Integer.valueOf(i3));
                        if (treeMap == null) {
                            break;
                        }
                        for (Integer num : z2 ? treeMap.descendingKeySet() : treeMap.keySet()) {
                            if (z2) {
                                int i4 = i3 + 1;
                                bff.e(num, "targetVersion");
                                int intValue = num.intValue();
                                if (i4 <= intValue && intValue <= i2) {
                                    Object obj = treeMap.get(num);
                                    bff.d(obj);
                                    arrayList.add(obj);
                                    i3 = num.intValue();
                                    z = true;
                                    break;
                                }
                            } else {
                                bff.e(num, "targetVersion");
                                int intValue2 = num.intValue();
                                if (i2 <= intValue2 && intValue2 < i3) {
                                    Object obj2 = treeMap.get(num);
                                    bff.d(obj2);
                                    arrayList.add(obj2);
                                    i3 = num.intValue();
                                    z = true;
                                    break;
                                    break;
                                }
                            }
                        }
                        z = false;
                    } else {
                        if (i3 <= i2) {
                            iterable = arrayList;
                            break;
                        }
                        treeMap = (TreeMap) frkVar.f17292a.get(Integer.valueOf(i3));
                        if (treeMap == null) {
                        }
                    }
                } while (z);
                iterable = null;
            }
            if (iterable != null) {
                fsq fsqVar = new fsq(10);
                Cursor k = crdVar.k("SELECT name FROM sqlite_master WHERE type = 'trigger'");
                while (k.moveToNext()) {
                    try {
                        fsqVar.add(k.getString(0));
                    } finally {
                    }
                }
                k.close();
                ListIterator listIterator = fsqVar.o().listIterator(0);
                while (true) {
                    aqx aqxVar = (aqx) listIterator;
                    if (!aqxVar.hasNext()) {
                        break;
                    }
                    String str = (String) aqxVar.next();
                    bff.e(str, "triggerName");
                    if (dmc.bw(str, "room_fts_content_sync_", false)) {
                        crdVar.j("DROP TRIGGER IF EXISTS ".concat(str));
                    }
                }
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    ((hbi) it.next()).c(crdVar);
                }
                agu j = evf.j(crdVar);
                if (!j.f10198b) {
                    throw new IllegalStateException("Migration didn't properly handle: " + j.f10197a);
                }
                n(crdVar);
                return;
            }
        }
        hda hdaVar2 = (hda) this.f14704a;
        if (hdaVar2 != null) {
            if (!((i <= i2 || !hdaVar2.f19251b) && hdaVar2.l && ((set = hdaVar2.f19254e) == null || !set.contains(Integer.valueOf(i))))) {
                crdVar.j("DROP TABLE IF EXISTS `Dependency`");
                crdVar.j("DROP TABLE IF EXISTS `WorkSpec`");
                crdVar.j("DROP TABLE IF EXISTS `WorkTag`");
                crdVar.j("DROP TABLE IF EXISTS `SystemIdInfo`");
                crdVar.j("DROP TABLE IF EXISTS `WorkName`");
                crdVar.j("DROP TABLE IF EXISTS `WorkProgress`");
                crdVar.j("DROP TABLE IF EXISTS `Preference`");
                List list = ((WorkDatabase_Impl) evfVar.f16224f).ae;
                if (list != null) {
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        ((csa) it2.next()).getClass();
                    }
                }
                evf.h(crdVar);
                return;
            }
        }
        throw new IllegalStateException("A migration from " + i + " to " + i2 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
    }

    public boolean t() {
        ColorStateList colorStateList;
        return ((Shader) this.f14704a) == null && (colorStateList = (ColorStateList) this.f14705b) != null && colorStateList.isStateful();
    }

    public String toString() {
        switch (this.f14706c) {
            case 2:
                StringBuilder sb = new StringBuilder("SectionReader{buf=");
                sb.append((ByteBuffer) this.f14704a);
                sb.append(", offset=");
                return awf.s(sb, this.f14707d, '}');
            case 3:
                StringBuilder sb2 = new StringBuilder("result is: ");
                sb2.append(this.f14707d);
                sb2.append("\nsuccessMsg is: '");
                sb2.append((String) this.f14704a);
                sb2.append("'\nerrorMsg is: '");
                return awf.ad(sb2, (String) this.f14705b, "'");
            case 4:
                StringBuilder sb3 = new StringBuilder();
                if (((aqt) this.f14704a) == aqt.HTTP_1_0) {
                    sb3.append("HTTP/1.0");
                } else {
                    sb3.append("HTTP/1.1");
                }
                sb3.append(' ');
                sb3.append(this.f14707d);
                sb3.append(' ');
                sb3.append((String) this.f14705b);
                String sb4 = sb3.toString();
                bff.e(sb4, "StringBuilder().apply(builderAction).toString()");
                return sb4;
            default:
                return super.toString();
        }
    }

    public dsg u() {
        return new dsg((eyc) this.f14705b, this.f14707d);
    }

    public void v(crd crdVar) {
    }

    public List w() {
        int i = ((ByteBuffer) this.f14704a).getInt();
        if (i == 0) {
            return Collections.EMPTY_LIST;
        }
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = q();
        }
        ArrayList arrayList = new ArrayList(i);
        for (int i3 = 0; i3 < i; i3++) {
            arrayList.add(g(iArr[i3]));
        }
        return arrayList;
    }

    public void x(int i) {
        ByteBuffer byteBuffer = (ByteBuffer) this.f14704a;
        byteBuffer.position(byteBuffer.position() + i);
    }

    public long y(zzacs zzacsVar) {
        zzacx zzacxVar = (zzacx) this.f14705b;
        zzadc zzadcVar = (zzadc) this.f14704a;
        while (zzacsVar.zze() < zzacsVar.zzd() - 6) {
            int i = this.f14707d;
            long zze = zzacsVar.zze();
            byte[] bArr = new byte[2];
            zzacsVar.zzh(bArr, 0, 2);
            if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
                zzacsVar.zzj();
                zzacsVar.zzg((int) (zze - zzacsVar.zzf()));
            } else {
                zzed zzedVar = new zzed(16);
                System.arraycopy(bArr, 0, zzedVar.zzN(), 0, 2);
                zzedVar.zzK(zzacv.zza(zzacsVar, zzedVar.zzN(), 2, 14));
                zzacsVar.zzj();
                zzacsVar.zzg((int) (zze - zzacsVar.zzf()));
                if (zzacy.zzc(zzedVar, zzadcVar, i, zzacxVar)) {
                    break;
                }
            }
            zzacsVar.zzg(1);
        }
        if (zzacsVar.zze() < zzacsVar.zzd() - 6) {
            return zzacxVar.zza;
        }
        zzacsVar.zzg((int) (zzacsVar.zzd() - zzacsVar.zze()));
        return zzadcVar.zzj;
    }

    public String z(int i) {
        if (i == -1) {
            return null;
        }
        m((i * 4) + ((eyc) this.f14705b).f16358a.h);
        m(((ByteBuffer) this.f14704a).getInt());
        char[] cArr = new char[byh.u(this)];
        int i2 = 0;
        while (true) {
            char aa = (char) (aa() & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            if (aa == 0) {
                return new String(cArr, 0, i2);
            }
            cArr[i2] = aa;
            if (aa >= 128) {
                if ((aa & 224) == 192) {
                    int aa2 = aa();
                    if ((aa2 & MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT) != 128) {
                        throw new beo("Bad second byte");
                    }
                    cArr[i2] = (char) (((aa & 31) << 6) | (aa2 & 63));
                } else {
                    if ((aa & 240) != 224) {
                        throw new beo("Bad byte");
                    }
                    int aa3 = aa();
                    int aa4 = aa();
                    if ((aa3 & MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT) != 128 || (aa4 & MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT) != 128) {
                        break;
                    }
                    cArr[i2] = (char) (((aa & 15) << 12) | ((aa3 & 63) << 6) | (aa4 & 63));
                }
            }
            i2++;
        }
        throw new beo("Bad second or third byte");
    }

    @Override // com.google.android.gms.internal.ads.zzacb
    public zzaca zza(zzacs zzacsVar, long j) {
        int zza;
        int zza2;
        switch (this.f14706c) {
            case 6:
                long zzf = zzacsVar.zzf();
                long y = y(zzacsVar);
                long zze = zzacsVar.zze();
                zzacsVar.zzg(Math.max(6, ((zzadc) this.f14704a).zzc));
                long y2 = y(zzacsVar);
                return (y > j || y2 <= j) ? y2 <= j ? zzaca.zzf(y2, zzacsVar.zze()) : zzaca.zzd(y, zzf) : zzaca.zze(zze);
            default:
                long zzf2 = zzacsVar.zzf();
                int min = (int) Math.min(112800L, zzacsVar.zzd() - zzf2);
                zzed zzedVar = (zzed) this.f14705b;
                zzedVar.zzI(min);
                zzacsVar.zzh(zzedVar.zzN(), 0, min);
                int zze2 = zzedVar.zze();
                long j2 = -1;
                long j3 = -9223372036854775807L;
                long j4 = -1;
                while (zzedVar.zzb() >= 188 && (zza2 = (zza = zzaoc.zza(zzedVar.zzN(), zzedVar.zzd(), zze2)) + MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION) <= zze2) {
                    long zzb = zzaoc.zzb(zzedVar, zza, this.f14707d);
                    if (zzb != -9223372036854775807L) {
                        long zzb2 = ((zzek) this.f14704a).zzb(zzb);
                        if (zzb2 <= j) {
                            j4 = zza;
                            if (100000 + zzb2 <= j) {
                                j3 = zzb2;
                            }
                        } else if (j3 == -9223372036854775807L) {
                            return zzaca.zzd(zzb2, zzf2);
                        }
                        return zzaca.zze(zzf2 + j4);
                    }
                    zzedVar.zzL(zza2);
                    j2 = zza2;
                }
                return j3 != -9223372036854775807L ? zzaca.zzf(j3, zzf2 + j2) : zzaca.zza;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacb
    public void zzb() {
        switch (this.f14706c) {
            case 6:
                break;
            default:
                byte[] bArr = zzen.zzf;
                int length = bArr.length;
                ((zzed) this.f14705b).zzJ(bArr, 0);
                break;
        }
    }
}
