package com.bytedance.sdk.openadsdk.h;

import com.bytedance.sdk.component.utils.ig;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: classes3.dex */
public class p {
    private static void d(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                dq(file2);
            }
        }
    }

    public static File dq(File file, String str) {
        File file2;
        ZipOutputStream zipOutputStream = null;
        try {
            try {
                file2 = new File(file.getParentFile(), str);
                try {
                    if (file.exists() && file.isDirectory()) {
                        ZipOutputStream zipOutputStream2 = new ZipOutputStream(new FileOutputStream(file2));
                        try {
                            for (File file3 : file.listFiles()) {
                                zipOutputStream2.putNextEntry(new ZipEntry(file3.getName()));
                                dq(zipOutputStream2, file3);
                                zipOutputStream2.closeEntry();
                            }
                            zipOutputStream2.flush();
                            zipOutputStream = zipOutputStream2;
                        } catch (IOException e2) {
                            e = e2;
                            zipOutputStream = zipOutputStream2;
                            ig.d("FileUtils", e);
                            dq(zipOutputStream);
                            return file2;
                        } catch (Throwable th) {
                            th = th;
                            zipOutputStream = zipOutputStream2;
                            dq(zipOutputStream);
                            throw th;
                        }
                    }
                    dq(zipOutputStream);
                    return file2;
                } catch (IOException e3) {
                    e = e3;
                }
            } catch (IOException e4) {
                e = e4;
                file2 = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void dq(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                ig.d("FileUtils", e2);
            }
        }
    }

    public static void dq(File file) {
        if (file.isDirectory()) {
            d(file);
        } else {
            file.delete();
        }
    }

    public static void dq(OutputStream outputStream, File file) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(file);
            } catch (Throwable th) {
                th = th;
            }
        } catch (FileNotFoundException e2) {
            e = e2;
        } catch (IOException e3) {
            e = e3;
        }
        try {
            byte[] bArr = new byte[1048576];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    dq(fileInputStream);
                    return;
                }
                outputStream.write(bArr, 0, read);
            }
        } catch (FileNotFoundException e4) {
            e = e4;
            fileInputStream2 = fileInputStream;
            ig.d("FileUtils", e);
            dq(fileInputStream2);
        } catch (IOException e5) {
            e = e5;
            fileInputStream2 = fileInputStream;
            ig.d("FileUtils", e);
            dq(fileInputStream2);
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            dq(fileInputStream2);
            throw th;
        }
    }

    public static void dq(String str, File file) {
        BufferedWriter bufferedWriter;
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                bufferedWriter = new BufferedWriter(new FileWriter(file));
            } catch (Throwable th) {
                th = th;
            }
        } catch (FileNotFoundException e2) {
            e = e2;
        } catch (IOException e3) {
            e = e3;
        }
        try {
            bufferedWriter.write(str);
            dq(bufferedWriter);
        } catch (FileNotFoundException e4) {
            e = e4;
            bufferedWriter2 = bufferedWriter;
            ig.d("FileUtils", e);
            dq(bufferedWriter2);
        } catch (IOException e5) {
            e = e5;
            bufferedWriter2 = bufferedWriter;
            ig.d("FileUtils", e);
            dq(bufferedWriter2);
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter2 = bufferedWriter;
            dq(bufferedWriter2);
            throw th;
        }
    }
}
