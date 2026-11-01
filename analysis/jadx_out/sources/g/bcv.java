package g;

import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.jar.Manifest;

/* loaded from: classes.dex */
public abstract class bcv {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f11304a = dsr.k(bcv.class);

    /* renamed from: b, reason: collision with root package name */
    public static String f11305b;

    public static ArrayList c() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ccy());
        arrayList.add(new buz());
        arrayList.add(new eak(23));
        arrayList.add(new eak(15));
        return arrayList;
    }

    public static String d() {
        String str;
        ClassLoader classLoader;
        if (f11305b == null) {
            try {
                classLoader = bcv.class.getClassLoader();
            } catch (Exception e2) {
                f11304a.l("Can't get manifest file", e2);
            }
            if (classLoader != null) {
                Enumeration<URL> resources = classLoader.getResources("META-INF/MANIFEST.MF");
                while (resources.hasMoreElements()) {
                    InputStream openStream = resources.nextElement().openStream();
                    try {
                        str = new Manifest(openStream).getMainAttributes().getValue("jadx-version");
                        if (str != null) {
                            if (openStream != null) {
                                openStream.close();
                            }
                            f11305b = str;
                        } else if (openStream != null) {
                            openStream.close();
                        }
                    } finally {
                    }
                }
            }
            str = "dev";
            f11305b = str;
        }
        return f11305b;
    }
}
