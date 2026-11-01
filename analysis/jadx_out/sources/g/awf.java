package g;

import android.content.res.AssetManager;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import j$.util.DesugarCollections;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract /* synthetic */ class awf {
    public static void a(String str, String str2, String str3, StringBuilder sb) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
    }

    public static String aa(ebp ebpVar) {
        StringBuilder sb = new StringBuilder("MD:");
        if (evh.e(ebpVar.getTypeParameters())) {
            sb.append('<');
            sb.append(evh.h(", ", ebpVar.getTypeParameters()));
            sb.append(">:");
        }
        sb.append('(');
        sb.append(evh.h(", ", ebpVar.f()));
        sb.append("):");
        sb.append(ebpVar.g());
        if (ebpVar.h()) {
            sb.append(" VARARG");
        }
        List i = ebpVar.i();
        if (evh.e(i)) {
            sb.append(" throws ");
            sb.append(evh.h(", ", i));
        }
        return sb.toString();
    }

    public static Map ab() {
        return DesugarCollections.synchronizedMap(new HashMap());
    }

    public static String ac(int i, String str) {
        return str + i;
    }

    public static String ad(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static String b(int i, String str, String str2) {
        return str + i + str2;
    }

    public static String c(String str, String str2) {
        return str + str2;
    }

    public static String d(StringBuilder sb, int i) {
        sb.append(Integer.toHexString(i));
        return sb.toString();
    }

    public static /* synthetic */ void e(Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
    }

    public static String f(String str, String str2, String str3, StringBuilder sb) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb.toString();
    }

    public static float g(float f2, float f3, float f4, float f5) {
        return ((f2 - f3) * f4) + f5;
    }

    public static boolean h(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar, String str) {
        return TextUtils.equals(iaVar.o().getType(), str);
    }

    public static String i(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static ClassCastException j(Object obj) {
        obj.getClass();
        return new ClassCastException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void k(cih cihVar, fsw fswVar, eos eosVar) {
        lh lhVar = (lh) cihVar;
        if (lhVar.l.g(csv.DONT_GENERATE)) {
            return;
        }
        for (eek eekVar : cihVar.c()) {
            if (!eekVar.l.g(csv.DONT_GENERATE)) {
                fswVar.ab(eekVar, eosVar, null);
            }
        }
        if (lhVar.l.k(acq.bc) != null) {
            throw new ClassCastException();
        }
    }

    public static StringBuilder l(long j, String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(j);
        sb.append(str2);
        return sb;
    }

    public static hbj m(String str) {
        AssetManager assetManager;
        AssetManager assetManager2 = null;
        try {
            if (!new File(str).isFile()) {
                throw new coz("read", str, null);
            }
            try {
                assetManager = (AssetManager) AssetManager.class.getDeclaredConstructor(null).newInstance(null);
            } catch (Exception e2) {
                e = e2;
            }
            try {
                int intValue = ((Integer) AssetManager.class.getMethod("addAssetPath", String.class).invoke(assetManager, str)).intValue();
                if (intValue == 0) {
                    throw new IOException("AssetManager cookie = 0");
                }
                XmlResourceParser openXmlResourceParser = assetManager.openXmlResourceParser(intValue, "AndroidManifest.xml");
                try {
                    hbj l = bwa.l(openXmlResourceParser);
                    openXmlResourceParser.close();
                    assetManager.close();
                    return l;
                } catch (Throwable th) {
                    if (openXmlResourceParser != null) {
                        try {
                            openXmlResourceParser.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                throw new coz("read", str, e);
            } catch (Throwable th3) {
                th = th3;
                assetManager2 = assetManager;
                if (assetManager2 != null) {
                    assetManager2.close();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static /* synthetic */ boolean n(Object obj) {
        return obj != null;
    }

    public static StringBuilder o(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    public static StringBuilder p(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    public static Object q(int i, List list) {
        return list.get(list.size() - i);
    }

    public static String r(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        return sb.toString();
    }

    public static String s(StringBuilder sb, int i, char c2) {
        sb.append(i);
        sb.append(c2);
        return sb.toString();
    }

    public static String t(String str, String str2, String str3, String str4) {
        return str + str2 + str3 + str4;
    }

    public static String u(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.exceptionLabel());
        return sb.toString();
    }

    public static boolean v(dba dbaVar, bmk bmkVar) {
        int b2 = bmkVar.b();
        if (b2 == 0) {
            return dbaVar.ae();
        }
        if (b2 == 10) {
            return dbaVar.af();
        }
        if (b2 == 20) {
            return dbaVar.ad();
        }
        if (b2 == 30) {
            return dbaVar.ah();
        }
        if (b2 == 40) {
            return dbaVar.ac();
        }
        throw new IllegalArgumentException("Level [" + bmkVar + "] not recognized.");
    }

    public static String w(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    public static String x(StringBuilder sb, int i, String str) {
        sb.append(i);
        sb.append(str);
        return sb.toString();
    }

    public static void y(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    public static StringBuilder z(int i, int i2, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        sb.append(i2);
        sb.append(str3);
        return sb;
    }
}
