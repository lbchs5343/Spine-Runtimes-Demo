package g;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.util.Base64;
import android.util.JsonReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* loaded from: classes.dex */
public abstract class ahz {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f10249a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final HashSet f10250b = new HashSet();

    public static caa c(Context context, String str, String str2) {
        try {
            if (!str.endsWith(".zip") && !str.endsWith(".lottie")) {
                return i(context.getAssets().open(str), str2);
            }
            try {
                ZipInputStream zipInputStream = new ZipInputStream(context.getAssets().open(str));
                try {
                    caa h = h(context, zipInputStream, str2);
                    try {
                        zipInputStream.close();
                    } catch (Exception unused) {
                    }
                    return h;
                } finally {
                    cqw cqwVar = ebx.f15269c;
                    try {
                        zipInputStream.close();
                    } catch (Exception unused2) {
                    }
                }
            } catch (RuntimeException e2) {
                throw e2;
            }
        } catch (IOException e3) {
            return new caa((Throwable) e3);
        }
    }

    public static void d() {
        ArrayList arrayList = new ArrayList(f10250b);
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList.get(i);
        }
    }

    public static caa e(JsonReader jsonReader, String str, boolean z) {
        try {
            try {
                cgf r = gs.r(jsonReader);
                cy.f13728a.c(str, r);
                caa caaVar = new caa(r);
                if (!z) {
                    return caaVar;
                }
                try {
                    jsonReader.close();
                } catch (RuntimeException e2) {
                    throw e2;
                } catch (Exception unused) {
                }
                return caaVar;
            } catch (Exception e3) {
                caa caaVar2 = new caa((Throwable) e3);
                if (z) {
                    try {
                        jsonReader.close();
                    } catch (RuntimeException e4) {
                        throw e4;
                    } catch (Exception unused2) {
                    }
                }
                return caaVar2;
            }
        } catch (Throwable th) {
            if (z) {
                try {
                    jsonReader.close();
                } catch (RuntimeException e5) {
                    throw e5;
                } catch (Exception unused3) {
                }
            }
            throw th;
        }
    }

    public static caa f(Context context, int i) {
        try {
            return i(context.getResources().openRawResource(i), j(context, i));
        } catch (Resources.NotFoundException e2) {
            return new caa((Throwable) e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static cyh g(String str, Callable callable) {
        cgf cgfVar = null;
        if (str != null) {
            hj hjVar = cy.f13728a.f13729b;
            synchronized (hjVar) {
                try {
                    Object obj = ((LinkedHashMap) hjVar.f19371b).get(str);
                    if (obj != 0) {
                        hjVar.f19374e++;
                        cgfVar = obj;
                    } else {
                        hjVar.f19370a++;
                    }
                } finally {
                }
            }
            cgfVar = cgfVar;
        }
        if (cgfVar != null) {
            return new cyh(new cm(cgfVar), false);
        }
        if (str != null) {
            HashMap hashMap = f10249a;
            if (hashMap.containsKey(str)) {
                return (cyh) hashMap.get(str);
            }
        }
        cyh cyhVar = new cyh(callable, false);
        if (str != null) {
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            cyhVar.j(new bax(str, atomicBoolean, 0));
            cyhVar.h(new bax(str, atomicBoolean, 1));
            if (!atomicBoolean.get()) {
                HashMap hashMap2 = f10249a;
                hashMap2.put(str, cyhVar);
                if (hashMap2.size() == 1) {
                    d();
                }
            }
        }
        return cyhVar;
    }

    public static caa h(Context context, ZipInputStream zipInputStream, String str) {
        hcl hclVar;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            cgf cgfVar = null;
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (name.contains("__MACOSX")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().endsWith(".json")) {
                    cgfVar = (cgf) e(new JsonReader(new InputStreamReader(zipInputStream)), null, false).f12534a;
                } else {
                    if (!name.endsWith(".png") && !name.endsWith(".webp") && !name.endsWith(".jpg") && !name.endsWith(".jpeg")) {
                        if (!name.endsWith(".ttf") && !name.endsWith(".otf")) {
                            zipInputStream.closeEntry();
                        }
                        if (name.contains("../")) {
                            zipInputStream.closeEntry();
                            nextEntry = zipInputStream.getNextEntry();
                        } else {
                            String[] split = name.split("/");
                            String str2 = split[split.length - 1];
                            String str3 = str2.split("\\.")[0];
                            File file = new File(com.bytedance.sdk.openadsdk.api.plugin.d.d(context), str2);
                            new FileOutputStream(file);
                            try {
                                FileOutputStream fileOutputStream = new FileOutputStream(file);
                                try {
                                    byte[] bArr = new byte[4096];
                                    while (true) {
                                        int read = zipInputStream.read(bArr);
                                        if (read == -1) {
                                            break;
                                        }
                                        fileOutputStream.write(bArr, 0, read);
                                    }
                                    fileOutputStream.flush();
                                    fileOutputStream.close();
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        try {
                                            fileOutputStream.close();
                                        } catch (Throwable th3) {
                                            th.addSuppressed(th3);
                                        }
                                        throw th2;
                                    }
                                }
                            } catch (Throwable th4) {
                                hbp.c("Unable to save font " + str3 + " to the temporary file: " + str2 + ". ", th4);
                            }
                            Typeface createFromFile = Typeface.createFromFile(file);
                            if (!file.delete()) {
                                hbp.b("Failed to delete temp font file " + file.getAbsolutePath() + ".");
                            }
                            hashMap2.put(str3, createFromFile);
                        }
                    }
                    if (name.contains("../")) {
                        zipInputStream.closeEntry();
                        nextEntry = zipInputStream.getNextEntry();
                    } else {
                        String[] split2 = name.split("/");
                        hashMap.put(split2[split2.length - 1], BitmapFactory.decodeStream(zipInputStream));
                    }
                }
                nextEntry = zipInputStream.getNextEntry();
            }
            if (cgfVar == null) {
                return new caa((Throwable) new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                String str4 = (String) entry.getKey();
                Iterator it = cgfVar.f12827e.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        hclVar = null;
                        break;
                    }
                    hclVar = (hcl) it.next();
                    if (hclVar.f19222c.equals(str4)) {
                        break;
                    }
                }
                if (hclVar != null) {
                    Bitmap bitmap = (Bitmap) entry.getValue();
                    int i = hclVar.f19224e;
                    int i2 = hclVar.h;
                    cqw cqwVar = ebx.f15269c;
                    if (bitmap.getWidth() != i || bitmap.getHeight() != i2) {
                        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, true);
                        bitmap.recycle();
                        bitmap = createScaledBitmap;
                    }
                    hclVar.f19221b = bitmap;
                }
            }
            for (Map.Entry entry2 : hashMap2.entrySet()) {
                boolean z = false;
                for (glv glvVar : cgfVar.f12829g.values()) {
                    if (glvVar.f18372b.equals(entry2.getKey())) {
                        glvVar.f18371a = (Typeface) entry2.getValue();
                        z = true;
                    }
                }
                if (!z) {
                    hbp.b("Parsed font for " + ((String) entry2.getKey()) + " however it was not found in the animation.");
                }
            }
            if (hashMap.isEmpty()) {
                Iterator it2 = cgfVar.f12827e.entrySet().iterator();
                while (it2.hasNext()) {
                    hcl hclVar2 = (hcl) ((Map.Entry) it2.next()).getValue();
                    if (hclVar2 == null) {
                        return null;
                    }
                    String str5 = hclVar2.f19222c;
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inScaled = true;
                    options.inDensity = 160;
                    if (str5.startsWith("data:") && str5.indexOf("base64,") > 0) {
                        try {
                            byte[] decode = Base64.decode(str5.substring(str5.indexOf(44) + 1), 0);
                            hclVar2.f19221b = BitmapFactory.decodeByteArray(decode, 0, decode.length, options);
                        } catch (IllegalArgumentException e2) {
                            hbp.c("data URL did not have correct base64 format.", e2);
                            return null;
                        }
                    }
                }
            }
            for (Map.Entry entry3 : cgfVar.f12827e.entrySet()) {
                if (((hcl) entry3.getValue()).f19221b == null) {
                    return new caa((Throwable) new IllegalStateException("There is no image for ".concat(((hcl) entry3.getValue()).f19222c)));
                }
            }
            if (str != null) {
                cy.f13728a.c(str, cgfVar);
            }
            return new caa(cgfVar);
        } catch (IOException e3) {
            return new caa((Throwable) e3);
        }
    }

    public static caa i(InputStream inputStream, String str) {
        try {
            caa e2 = e(new JsonReader(new InputStreamReader(inputStream)), str, true);
            cqw cqwVar = ebx.f15269c;
            if (inputStream == null) {
                return e2;
            }
            try {
                inputStream.close();
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception unused) {
            }
            return e2;
        } catch (Throwable th) {
            cqw cqwVar2 = ebx.f15269c;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (RuntimeException e4) {
                    throw e4;
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    public static String j(Context context, int i) {
        StringBuilder sb = new StringBuilder("rawRes");
        sb.append((context.getResources().getConfiguration().uiMode & 48) == 32 ? "_night_" : "_day_");
        sb.append(i);
        return sb.toString();
    }
}
