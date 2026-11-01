package g;

import android.content.SharedPreferences;
import androidx.multidex.MultiDexApplication;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

/* loaded from: classes.dex */
public final class ews implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final File f16287a;

    /* renamed from: b, reason: collision with root package name */
    public final RandomAccessFile f16288b;

    /* renamed from: c, reason: collision with root package name */
    public final FileChannel f16289c;

    /* renamed from: d, reason: collision with root package name */
    public final File f16290d;

    /* renamed from: e, reason: collision with root package name */
    public final long f16291e;

    /* renamed from: f, reason: collision with root package name */
    public final FileLock f16292f;

    public ews(File file, File file2) {
        file.getPath();
        file2.getPath();
        this.f16290d = file;
        this.f16287a = file2;
        this.f16291e = h(file);
        File file3 = new File(file2, "MultiDex.lock");
        RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rw");
        this.f16288b = randomAccessFile;
        try {
            try {
                FileChannel channel = randomAccessFile.getChannel();
                this.f16289c = channel;
                try {
                    file3.getPath();
                    this.f16292f = channel.lock();
                    file3.getPath();
                } catch (IOException e2) {
                    e = e2;
                    try {
                        this.f16289c.close();
                    } catch (IOException unused) {
                    }
                    throw e;
                } catch (Error e3) {
                    e = e3;
                    this.f16289c.close();
                    throw e;
                } catch (RuntimeException e4) {
                    e = e4;
                    this.f16289c.close();
                    throw e;
                }
            } catch (IOException e5) {
                e = e5;
                try {
                    this.f16288b.close();
                } catch (IOException unused2) {
                }
                throw e;
            }
        } catch (Error e6) {
            e = e6;
            this.f16288b.close();
            throw e;
        } catch (RuntimeException e7) {
            e = e7;
            this.f16288b.close();
            throw e;
        }
    }

    public static void g(ZipFile zipFile, ZipEntry zipEntry, biv bivVar, String str) {
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File createTempFile = File.createTempFile(tn.x("tmp-", str), ".zip", bivVar.getParentFile());
        createTempFile.getPath();
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(createTempFile)));
            try {
                ZipEntry zipEntry2 = new ZipEntry("classes.dex");
                zipEntry2.setTime(zipEntry.getTime());
                zipOutputStream.putNextEntry(zipEntry2);
                byte[] bArr = new byte[16384];
                for (int read = inputStream.read(bArr); read != -1; read = inputStream.read(bArr)) {
                    zipOutputStream.write(bArr, 0, read);
                }
                zipOutputStream.closeEntry();
                zipOutputStream.close();
                if (!createTempFile.setReadOnly()) {
                    throw new IOException("Failed to mark readonly \"" + createTempFile.getAbsolutePath() + "\" (tmp of \"" + bivVar.getAbsolutePath() + "\")");
                }
                bivVar.getPath();
                if (createTempFile.renameTo(bivVar)) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                    createTempFile.delete();
                    return;
                }
                throw new IOException("Failed to rename \"" + createTempFile.getAbsolutePath() + "\" to \"" + bivVar.getAbsolutePath() + "\"");
            } catch (Throwable th) {
                zipOutputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            try {
                inputStream.close();
            } catch (IOException unused2) {
            }
            createTempFile.delete();
            throw th2;
        }
    }

    public static long h(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            bgk v = kj.v(randomAccessFile);
            CRC32 crc32 = new CRC32();
            long j = v.f11516b;
            randomAccessFile.seek(v.f11515a);
            byte[] bArr = new byte[16384];
            int read = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j));
            while (read != -1) {
                crc32.update(bArr, 0, read);
                j -= read;
                if (j == 0) {
                    break;
                }
                read = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j));
            }
            long value = crc32.getValue();
            randomAccessFile.close();
            return value == -1 ? value - 1 : value;
        } catch (Throwable th) {
            randomAccessFile.close();
            throw th;
        }
    }

    public static void i(MultiDexApplication multiDexApplication, long j, long j2, ArrayList arrayList) {
        SharedPreferences.Editor edit = multiDexApplication.getSharedPreferences("multidex.version", 4).edit();
        edit.putLong("timestamp", j);
        edit.putLong("crc", j2);
        edit.putInt("dex.number", arrayList.size() + 1);
        Iterator it = arrayList.iterator();
        int i = 2;
        while (it.hasNext()) {
            biv bivVar = (biv) it.next();
            edit.putLong(awf.ac(i, "dex.crc."), bivVar.crc);
            edit.putLong("dex.time." + i, bivVar.lastModified());
            i++;
        }
        edit.commit();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f16292f.release();
        this.f16289c.close();
        this.f16288b.close();
    }

    public final ArrayList j(MultiDexApplication multiDexApplication, boolean z) {
        ArrayList arrayList;
        File file = this.f16290d;
        file.getPath();
        if (!this.f16292f.isValid()) {
            throw new IllegalStateException("MultiDexExtractor was closed");
        }
        if (!z) {
            SharedPreferences sharedPreferences = multiDexApplication.getSharedPreferences("multidex.version", 4);
            long j = sharedPreferences.getLong("timestamp", -1L);
            long lastModified = file.lastModified();
            if (lastModified == -1) {
                lastModified--;
            }
            if (j == lastModified && sharedPreferences.getLong("crc", -1L) == this.f16291e) {
                try {
                    arrayList = k(multiDexApplication);
                } catch (IOException unused) {
                    ArrayList l = l();
                    long lastModified2 = file.lastModified();
                    if (lastModified2 == -1) {
                        lastModified2--;
                    }
                    i(multiDexApplication, lastModified2, this.f16291e, l);
                    arrayList = l;
                }
                arrayList.size();
                return arrayList;
            }
        }
        ArrayList l2 = l();
        long lastModified3 = file.lastModified();
        if (lastModified3 == -1) {
            lastModified3--;
        }
        i(multiDexApplication, lastModified3, this.f16291e, l2);
        arrayList = l2;
        arrayList.size();
        return arrayList;
    }

    public final ArrayList k(MultiDexApplication multiDexApplication) {
        String str = this.f16290d.getName() + ".classes";
        SharedPreferences sharedPreferences = multiDexApplication.getSharedPreferences("multidex.version", 4);
        int i = sharedPreferences.getInt("dex.number", 1);
        ArrayList arrayList = new ArrayList(i - 1);
        for (int i2 = 2; i2 <= i; i2++) {
            biv bivVar = new biv(this.f16287a, str + i2 + ".zip");
            if (!bivVar.isFile()) {
                throw new IOException("Missing extracted secondary dex file '" + bivVar.getPath() + "'");
            }
            bivVar.crc = h(bivVar);
            long j = sharedPreferences.getLong("dex.crc." + i2, -1L);
            long j2 = sharedPreferences.getLong("dex.time." + i2, -1L);
            long lastModified = bivVar.lastModified();
            if (j2 != lastModified || j != bivVar.crc) {
                throw new IOException("Invalid extracted dex: " + bivVar + " (key \"\"), expected modification time: " + j2 + ", modification time: " + lastModified + ", expected crc: " + j + ", file crc: " + bivVar.crc);
            }
            arrayList.add(bivVar);
        }
        return arrayList;
    }

    public final ArrayList l() {
        StringBuilder sb = new StringBuilder();
        File file = this.f16290d;
        sb.append(file.getName());
        sb.append(".classes");
        String sb2 = sb.toString();
        euk eukVar = new euk();
        File file2 = this.f16287a;
        File[] listFiles = file2.listFiles(eukVar);
        if (listFiles == null) {
            file2.getPath();
        } else {
            for (File file3 : listFiles) {
                file3.getPath();
                file3.length();
                if (file3.delete()) {
                    file3.getPath();
                } else {
                    file3.getPath();
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(file);
        try {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("classes");
            int i = 2;
            sb3.append(2);
            sb3.append(".dex");
            ZipEntry entry = zipFile.getEntry(sb3.toString());
            while (entry != null) {
                biv bivVar = new biv(file2, sb2 + i + ".zip");
                arrayList.add(bivVar);
                bivVar.toString();
                int i2 = 0;
                boolean z = false;
                while (i2 < 3 && !z) {
                    i2++;
                    g(zipFile, entry, bivVar, sb2);
                    try {
                        bivVar.crc = h(bivVar);
                        z = true;
                    } catch (IOException unused) {
                        bivVar.getAbsolutePath();
                        z = false;
                    }
                    bivVar.getAbsolutePath();
                    bivVar.length();
                    if (!z) {
                        bivVar.delete();
                        if (bivVar.exists()) {
                            bivVar.getPath();
                        }
                    }
                }
                if (!z) {
                    throw new IOException("Could not create zip file " + bivVar.getAbsolutePath() + " for secondary dex (" + i + ")");
                }
                i++;
                entry = zipFile.getEntry("classes" + i + ".dex");
            }
            return arrayList;
        } finally {
            try {
                zipFile.close();
            } catch (IOException unused2) {
            }
        }
    }
}
