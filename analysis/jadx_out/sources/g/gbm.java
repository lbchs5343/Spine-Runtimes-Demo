package g;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public final /* synthetic */ class gbm implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17870a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b.c.d f17871b;

    public /* synthetic */ gbm(b.c.d dVar, int i) {
        this.f17870a = i;
        this.f17871b = dVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0254 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0209 A[Catch: all -> 0x01a9, IOException -> 0x01ad, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x01a9, blocks: (B:54:0x0151, B:57:0x0156, B:61:0x0160, B:63:0x0168, B:65:0x016e, B:70:0x017a, B:72:0x0184, B:74:0x018a, B:76:0x0190, B:79:0x019c, B:82:0x01bb, B:94:0x01e2, B:100:0x0239, B:128:0x0200, B:123:0x0206, B:117:0x0209, B:144:0x01b3), top: B:53:0x0151 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x020c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0200 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0481 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:313:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01d7 A[Catch: all -> 0x01dc, LOOP:2: B:88:0x01d1->B:90:0x01d7, LOOP_END, TRY_LEAVE, TryCatch #25 {all -> 0x01dc, blocks: (B:87:0x01cf, B:88:0x01d1, B:90:0x01d7), top: B:86:0x01cf, outer: #23 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01df A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Throwable th;
        ZipFile zipFile;
        StringBuilder sb;
        int lastIndexOf;
        Throwable th2;
        ZipFile zipFile2;
        boolean z;
        boolean z2;
        int lastIndexOf2;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        byte[] bArr;
        int read;
        int i = this.f17870a;
        int i2 = 14;
        final b.c.d dVar = this.f17871b;
        switch (i) {
            case 0:
                int i3 = b.c.d.f355d;
                final LinkedHashMap linkedHashMap = new LinkedHashMap();
                b.c.d.ad(linkedHashMap);
                try {
                    ZipFile zipFile3 = new ZipFile(dVar.r.f10868d);
                    try {
                        Enumeration<? extends ZipEntry> entries = zipFile3.entries();
                        while (entries.hasMoreElements()) {
                            ZipEntry nextElement = entries.nextElement();
                            if (nextElement != null && !nextElement.isDirectory()) {
                                String name = nextElement.getName();
                                if (!TextUtils.isEmpty(name)) {
                                    if (name.length() >= Math.min(r11, 14) && name.endsWith(".so") && (lastIndexOf = name.lastIndexOf("/")) >= 0) {
                                        if (name.regionMatches(lastIndexOf + 1, "lib", 0, 3)) {
                                            String substring = name.substring(0, lastIndexOf);
                                            gq gqVar = (gq) linkedHashMap.get(name.substring(substring.lastIndexOf("/") + 1, lastIndexOf));
                                            if (gqVar == null) {
                                                gqVar = (gq) linkedHashMap.get("other");
                                            }
                                            gqVar.f18565d = substring;
                                            aug augVar = new aug(name, nextElement.getSize());
                                            if (gqVar.f18563b == null) {
                                                gqVar.f18563b = new ArrayList();
                                            }
                                            gqVar.f18563b.add(augVar);
                                            r11 = 13;
                                        }
                                    }
                                    r11 = 13;
                                }
                            }
                        }
                        auj aujVar = dVar.r;
                        if (aujVar != null) {
                            aujVar.f10867c = linkedHashMap;
                        }
                        final int i4 = 0;
                        dVar.runOnUiThread(new Runnable() { // from class: g.chs
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i5 = i4;
                                LinkedHashMap linkedHashMap2 = linkedHashMap;
                                b.c.d dVar2 = dVar;
                                switch (i5) {
                                    case 0:
                                        int i6 = b.c.d.f355d;
                                        dVar2.ag(linkedHashMap2);
                                        break;
                                    default:
                                        int i7 = b.c.d.f355d;
                                        dVar2.aj(linkedHashMap2);
                                        break;
                                }
                            }
                        });
                        try {
                            zipFile3.close();
                            return;
                        } catch (IOException e2) {
                            e = e2;
                            sb = new StringBuilder();
                            sb.append(dVar.getString(R.string.parse_so_exce));
                            sb.append(e);
                            dVar.am(sb.toString());
                            return;
                        }
                    } catch (IOException e3) {
                        e = e3;
                        zipFile = zipFile3;
                        try {
                            dVar.am(dVar.getString(R.string.parse_so_exce) + e);
                            if (zipFile != null) {
                                try {
                                    zipFile.close();
                                    return;
                                } catch (IOException e4) {
                                    e = e4;
                                    sb = new StringBuilder();
                                    sb.append(dVar.getString(R.string.parse_so_exce));
                                    sb.append(e);
                                    dVar.am(sb.toString());
                                    return;
                                }
                            }
                            return;
                        } catch (Throwable th3) {
                            th = th3;
                            if (zipFile != null) {
                                throw th;
                            }
                            try {
                                zipFile.close();
                                throw th;
                            } catch (IOException e5) {
                                dVar.am(dVar.getString(R.string.parse_so_exce) + e5);
                                throw th;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        zipFile = zipFile3;
                        if (zipFile != null) {
                        }
                    }
                } catch (IOException e6) {
                    e = e6;
                    zipFile = null;
                } catch (Throwable th5) {
                    th = th5;
                    zipFile = null;
                }
                break;
            case 1:
                PackageInfo d2 = cwz.b(dVar.u).d(1, dVar.x);
                if (d2 != null) {
                    ApplicationInfo applicationInfo = d2.applicationInfo;
                    dVar.m = applicationInfo;
                    if (applicationInfo == null) {
                        return;
                    }
                    final LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    b.c.d.ad(linkedHashMap2);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(dVar.m.nativeLibraryDir);
                    if (dyd.bp(21)) {
                        arrayList.add((String) awt.ac(dVar.m, "secondaryNativeLibraryDir", true));
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        if (!TextUtils.isEmpty(str)) {
                            File file = new File(str);
                            gq gqVar2 = (gq) linkedHashMap2.get(buj.x(str));
                            if (gqVar2 == null) {
                                gqVar2 = (gq) linkedHashMap2.get("other");
                            }
                            if (file.isDirectory()) {
                                gqVar2.f18565d = str;
                                File[] listFiles = file.listFiles();
                                if (!acw.n(listFiles)) {
                                    Arrays.sort(listFiles, new fdq(4));
                                    for (File file2 : listFiles) {
                                        if (file2 != null && file2.isFile() && file2.getName().endsWith(".so")) {
                                            aug augVar2 = new aug(file2.getAbsolutePath(), file2.length());
                                            if (gqVar2.f18563b == null) {
                                                gqVar2.f18563b = new ArrayList();
                                            }
                                            gqVar2.f18563b.add(augVar2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    auj aujVar2 = dVar.r;
                    if (aujVar2 != null) {
                        aujVar2.f10869e = linkedHashMap2;
                    }
                    final int i5 = 1;
                    dVar.runOnUiThread(new Runnable() { // from class: g.chs
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i52 = i5;
                            LinkedHashMap linkedHashMap22 = linkedHashMap2;
                            b.c.d dVar2 = dVar;
                            switch (i52) {
                                case 0:
                                    int i6 = b.c.d.f355d;
                                    dVar2.ag(linkedHashMap22);
                                    break;
                                default:
                                    int i7 = b.c.d.f355d;
                                    dVar2.aj(linkedHashMap22);
                                    break;
                            }
                        }
                    });
                    return;
                }
                return;
            case 2:
                boolean endsWith = dVar.k.endsWith(".so");
                auj aujVar3 = dVar.r;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(acw.af(dVar.u) + "so");
                String str2 = File.separator;
                sb2.append(str2);
                sb2.append(aujVar3.j);
                sb2.append(str2);
                String str3 = dVar.k;
                sb2.append(!endsWith ? buj.x(str3) : buj.an(str3));
                File file3 = new File(sb2.toString());
                if (!file3.exists()) {
                    file3.mkdirs();
                }
                try {
                    zipFile2 = new ZipFile(dVar.r.f10868d);
                    try {
                        try {
                            Enumeration<? extends ZipEntry> entries2 = zipFile2.entries();
                            z2 = false;
                            while (entries2.hasMoreElements() && (!endsWith || !z2)) {
                                try {
                                    ZipEntry nextElement2 = entries2.nextElement();
                                    if (nextElement2 != null && !nextElement2.isDirectory()) {
                                        String name2 = nextElement2.getName();
                                        if (!TextUtils.isEmpty(name2) && name2.length() >= Math.min(13, i2) && name2.endsWith(".so") && (lastIndexOf2 = name2.lastIndexOf("/")) >= 0 && name2.regionMatches(lastIndexOf2 + 1, "lib", 0, 3)) {
                                            if (!endsWith) {
                                                if (!buj.au(name2).equals(dVar.k)) {
                                                }
                                                File file4 = new File(file3, buj.x(name2));
                                                inputStream = zipFile2.getInputStream(nextElement2);
                                                try {
                                                    fileOutputStream = new FileOutputStream(file4);
                                                    try {
                                                        bArr = new byte[4096];
                                                        while (true) {
                                                            read = inputStream.read(bArr);
                                                            if (read <= 0) {
                                                                fileOutputStream.write(bArr, 0, read);
                                                            } else {
                                                                try {
                                                                    fileOutputStream.close();
                                                                    try {
                                                                        inputStream.close();
                                                                        z2 = true;
                                                                    } catch (IOException e7) {
                                                                        e = e7;
                                                                        z = true;
                                                                        dVar.am(dVar.getString(R.string.parse_so_exce) + e);
                                                                        if (zipFile2 != null) {
                                                                        }
                                                                        z2 = z;
                                                                        eqi eqiVar = dVar.ac;
                                                                        eqiVar.sendMessage(eqiVar.obtainMessage(!z2 ? 2 : 3, file3.getPath()));
                                                                        return;
                                                                    }
                                                                } catch (IOException unused) {
                                                                    z2 = true;
                                                                    if (inputStream == null) {
                                                                        inputStream.close();
                                                                    }
                                                                    i2 = 14;
                                                                } catch (Throwable th6) {
                                                                    th = th6;
                                                                    z = true;
                                                                    if (inputStream != null) {
                                                                        try {
                                                                            inputStream.close();
                                                                        } catch (IOException e8) {
                                                                            e = e8;
                                                                            dVar.am(dVar.getString(R.string.parse_so_exce) + e);
                                                                            if (zipFile2 != null) {
                                                                            }
                                                                            z2 = z;
                                                                            eqi eqiVar2 = dVar.ac;
                                                                            eqiVar2.sendMessage(eqiVar2.obtainMessage(!z2 ? 2 : 3, file3.getPath()));
                                                                            return;
                                                                        }
                                                                    }
                                                                    throw th;
                                                                }
                                                            }
                                                        }
                                                    } finally {
                                                        break;
                                                    }
                                                } catch (IOException unused2) {
                                                    if (inputStream == null) {
                                                    }
                                                    i2 = 14;
                                                } catch (Throwable th7) {
                                                    th = th7;
                                                    z = z2;
                                                    if (inputStream != null) {
                                                    }
                                                    throw th;
                                                }
                                            }
                                            if (endsWith) {
                                                if (!name2.equals(dVar.k)) {
                                                    continue;
                                                }
                                                File file42 = new File(file3, buj.x(name2));
                                                inputStream = zipFile2.getInputStream(nextElement2);
                                                fileOutputStream = new FileOutputStream(file42);
                                                bArr = new byte[4096];
                                                while (true) {
                                                    read = inputStream.read(bArr);
                                                    if (read <= 0) {
                                                    }
                                                    fileOutputStream.write(bArr, 0, read);
                                                }
                                            } else {
                                                continue;
                                            }
                                        }
                                    }
                                    i2 = 14;
                                } catch (IOException e9) {
                                    e = e9;
                                    z = z2;
                                }
                            }
                            try {
                                zipFile2.close();
                            } catch (IOException e10) {
                                dVar.am(dVar.getString(R.string.parse_so_exce) + e10);
                            }
                        } catch (Throwable th8) {
                            th2 = th8;
                            if (zipFile2 == null) {
                                throw th2;
                            }
                            try {
                                zipFile2.close();
                                throw th2;
                            } catch (IOException e11) {
                                dVar.am(dVar.getString(R.string.parse_so_exce) + e11);
                                throw th2;
                            }
                        }
                    } catch (IOException e12) {
                        e = e12;
                        z = false;
                        dVar.am(dVar.getString(R.string.parse_so_exce) + e);
                        if (zipFile2 != null) {
                            try {
                                zipFile2.close();
                            } catch (IOException e13) {
                                dVar.am(dVar.getString(R.string.parse_so_exce) + e13);
                            }
                        }
                        z2 = z;
                        eqi eqiVar22 = dVar.ac;
                        eqiVar22.sendMessage(eqiVar22.obtainMessage(!z2 ? 2 : 3, file3.getPath()));
                        return;
                    }
                } catch (IOException e14) {
                    e = e14;
                    zipFile2 = null;
                } catch (Throwable th9) {
                    th2 = th9;
                    zipFile2 = null;
                }
                eqi eqiVar222 = dVar.ac;
                eqiVar222.sendMessage(eqiVar222.obtainMessage(!z2 ? 2 : 3, file3.getPath()));
                return;
            default:
                int i6 = b.c.d.f355d;
                File file5 = new File(dVar.v);
                if (!file5.exists()) {
                    eqi eqiVar3 = dVar.ac;
                    eqiVar3.sendMessage(eqiVar3.obtainMessage(13, dVar.v));
                    return;
                }
                boolean isDirectory = file5.isDirectory();
                auj aujVar4 = dVar.r;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(acw.af(dVar.u) + "so");
                String str4 = File.separator;
                sb3.append(str4);
                sb3.append(aujVar4.j);
                sb3.append(str4);
                String str5 = dVar.v;
                sb3.append(isDirectory ? buj.x(str5) : buj.an(str5));
                File file6 = new File(sb3.toString());
                if (!file6.exists()) {
                    file6.mkdirs();
                }
                if (!isDirectory) {
                    File file7 = new File(file6, file5.getName());
                    try {
                        buj.y(dVar.v, file7.getPath());
                        eqi eqiVar4 = dVar.ac;
                        eqiVar4.sendMessage(eqiVar4.obtainMessage(12, file7.getPath()));
                        return;
                    } catch (Exception unused3) {
                        eqi eqiVar5 = dVar.ac;
                        eqiVar5.sendMessage(eqiVar5.obtainMessage(13, file7.getPath()));
                        return;
                    }
                }
                boolean z3 = false;
                for (File file8 : file5.listFiles()) {
                    if (file8 != null && file8.isFile()) {
                        try {
                            buj.y(file8.getPath(), new File(file6, file8.getName()).getPath());
                            z3 = true;
                        } catch (Exception unused4) {
                        }
                    }
                }
                eqi eqiVar6 = dVar.ac;
                eqiVar6.sendMessage(eqiVar6.obtainMessage(z3 ? 12 : 13, file6.getPath()));
                return;
        }
    }
}
