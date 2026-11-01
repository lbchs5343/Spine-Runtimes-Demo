package g;

import android.util.Log;
import androidx.multidex.MultiDexApplication;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.StringTokenizer;

/* loaded from: classes.dex */
public abstract class ia {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f19403a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f19404b;

    static {
        String property = System.getProperty("java.vm.version");
        boolean z = false;
        if (property != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(property, ".");
            String nextToken = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
            String nextToken2 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
            if (nextToken != null && nextToken2 != null) {
                try {
                    int parseInt = Integer.parseInt(nextToken);
                    int parseInt2 = Integer.parseInt(nextToken2);
                    if (parseInt > 2 || (parseInt == 2 && parseInt2 >= 1)) {
                        z = true;
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        f19404b = z;
    }

    public static void c(BaseDexClassLoader baseDexClassLoader, File file, ArrayList arrayList) {
        IOException[] iOExceptionArr;
        if (arrayList.isEmpty()) {
            return;
        }
        Object obj = g(baseDexClassLoader, "pathList").get(baseDexClassLoader);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList(arrayList);
        Class<?>[] clsArr = {ArrayList.class, File.class, ArrayList.class};
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Method declaredMethod = cls.getDeclaredMethod("makeDexElements", clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                Object[] objArr = (Object[]) declaredMethod.invoke(obj, arrayList3, file, arrayList2);
                Field g2 = g(obj, "dexElements");
                Object[] objArr2 = (Object[]) g2.get(obj);
                Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
                System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
                System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
                g2.set(obj, objArr3);
                if (arrayList2.size() > 0) {
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                    }
                    Field g3 = g(obj, "dexElementsSuppressedExceptions");
                    IOException[] iOExceptionArr2 = (IOException[]) g3.get(obj);
                    if (iOExceptionArr2 == null) {
                        iOExceptionArr = (IOException[]) arrayList2.toArray(new IOException[arrayList2.size()]);
                    } else {
                        IOException[] iOExceptionArr3 = new IOException[arrayList2.size() + iOExceptionArr2.length];
                        arrayList2.toArray(iOExceptionArr3);
                        System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList2.size(), iOExceptionArr2.length);
                        iOExceptionArr = iOExceptionArr3;
                    }
                    g3.set(obj, iOExceptionArr);
                    IOException iOException = new IOException("I/O exception during makeDexElement");
                    iOException.initCause((Throwable) arrayList2.get(0));
                    throw iOException;
                }
                return;
            } catch (NoSuchMethodException unused) {
            }
        }
        throw new NoSuchMethodException("Method makeDexElements with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
    }

    public static void d(File file) {
        file.mkdir();
        if (file.isDirectory()) {
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            Log.e("MultiDex", "Failed to create dir " + file.getPath() + ". Parent file is null.");
        } else {
            Log.e("MultiDex", "Failed to create dir " + file.getPath() + ". parent file is a dir " + parentFile.isDirectory() + ", a file " + parentFile.isFile() + ", exists " + parentFile.exists() + ", readable " + parentFile.canRead() + ", writable " + parentFile.canWrite());
        }
        throw new IOException("Failed to create directory " + file.getPath());
    }

    public static void e(MultiDexApplication multiDexApplication) {
        File file = new File(multiDexApplication.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            file.getPath();
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                file.getPath();
                return;
            }
            for (File file2 : listFiles) {
                file2.getPath();
                file2.length();
                if (file2.delete()) {
                    file2.getPath();
                } else {
                    file2.getPath();
                }
            }
            if (file.delete()) {
                file.getPath();
            } else {
                file.getPath();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002f A[Catch: all -> 0x000d, DONT_GENERATE, TRY_LEAVE, TryCatch #5 {all -> 0x000d, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0010, B:12:0x0019, B:13:0x001d, B:17:0x002f, B:21:0x0034, B:23:0x003b, B:24:0x004b, B:32:0x006e, B:34:0x0075, B:36:0x0077, B:44:0x0079, B:45:0x007c, B:49:0x003f, B:52:0x0022, B:27:0x0059, B:29:0x005d, B:40:0x0065), top: B:3:0x0005, inners: #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0031 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void f(MultiDexApplication multiDexApplication, File file, File file2) {
        ClassLoader classLoader;
        HashSet hashSet = f19403a;
        synchronized (hashSet) {
            try {
                if (hashSet.contains(file)) {
                    return;
                }
                hashSet.add(file);
                System.getProperty("java.vm.version");
                IOException e2 = null;
                try {
                    classLoader = multiDexApplication.getClassLoader();
                } catch (RuntimeException unused) {
                }
                if (classLoader instanceof BaseDexClassLoader) {
                    if (classLoader != null) {
                        return;
                    }
                    try {
                        e(multiDexApplication);
                    } catch (Throwable unused2) {
                    }
                    File file3 = new File(file2, "code_cache");
                    try {
                        d(file3);
                    } catch (IOException unused3) {
                        file3 = new File(multiDexApplication.getFilesDir(), "code_cache");
                        d(file3);
                    }
                    File file4 = new File(file3, "secondary-dexes");
                    d(file4);
                    ews ewsVar = new ews(file, file4);
                    try {
                        try {
                            c((BaseDexClassLoader) classLoader, file4, ewsVar.j(multiDexApplication, false));
                        } catch (IOException unused4) {
                            c((BaseDexClassLoader) classLoader, file4, ewsVar.j(multiDexApplication, true));
                        }
                        try {
                        } catch (IOException e3) {
                            e2 = e3;
                        }
                        if (e2 != null) {
                            throw e2;
                        }
                        return;
                    } finally {
                        try {
                            ewsVar.close();
                        } catch (IOException unused5) {
                        }
                    }
                }
                Log.e("MultiDex", "Context class loader is null or not dex-capable. Must be running in test mode. Skip patching.");
                classLoader = null;
                if (classLoader != null) {
                }
            } finally {
            }
        }
    }

    public static Field g(Object obj, String str) {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
            }
        }
        StringBuilder p = awf.p("Field ", str, " not found in ");
        p.append(obj.getClass());
        throw new NoSuchFieldException(p.toString());
    }
}
