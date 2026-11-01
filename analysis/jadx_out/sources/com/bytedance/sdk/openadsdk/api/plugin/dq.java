package com.bytedance.sdk.openadsdk.api.plugin;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import g.tn;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

/* loaded from: classes.dex */
public class dq extends ContextWrapper {

    /* renamed from: d, reason: collision with root package name */
    private File f2413d;
    private final Object dq;
    private File ia;
    private File iw;
    private File mn;
    private File ox;
    private File p;
    private File s;

    public dq(Context context) {
        super(context);
        this.dq = new Object();
    }

    private static File dq(File file) {
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private static File dq(File file, String str) {
        if (str.indexOf(File.separatorChar) < 0) {
            return new File(file, str);
        }
        throw new IllegalArgumentException(tn.ad("File ", str, " contains a path separator"));
    }

    private String dq(String str) {
        return dq() + "_" + str;
    }

    public File d() {
        return super.getFilesDir().getParentFile();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String[] databaseList() {
        if (dq() == null) {
            return super.databaseList();
        }
        String[] databaseList = super.databaseList();
        int length = databaseList.length;
        boolean[] zArr = new boolean[length];
        int i = 0;
        for (int i2 = 0; i2 < databaseList.length; i2++) {
            if (databaseList[i2].startsWith(dq())) {
                zArr[i2] = true;
                i++;
            } else {
                zArr[i2] = false;
            }
        }
        String[] strArr = new String[i];
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            if (zArr[i4]) {
                strArr[i3] = databaseList[i4];
                i3++;
            }
        }
        return strArr;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean deleteDatabase(String str) {
        return dq() == null ? super.deleteDatabase(str) : super.deleteDatabase(dq(str));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean deleteFile(String str) {
        return dq(getFilesDir(), str).delete();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean deleteSharedPreferences(String str) {
        return dq() == null ? super.deleteSharedPreferences(str) : super.deleteSharedPreferences(dq(str));
    }

    public String dq() {
        return "pangle_com.byted.pangle";
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getCacheDir() {
        File dq;
        if (dq() == null) {
            return super.getCacheDir();
        }
        synchronized (this.dq) {
            try {
                if (this.iw == null) {
                    this.iw = new File(super.getCacheDir(), dq());
                }
                dq = dq(this.iw);
            } catch (Throwable th) {
                throw th;
            }
        }
        return dq;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getCodeCacheDir() {
        File dq;
        if (dq() == null) {
            return super.getCodeCacheDir();
        }
        synchronized (this.dq) {
            try {
                if (this.mn == null) {
                    this.mn = new File(super.getCodeCacheDir(), dq());
                }
                dq = dq(this.mn);
            } catch (Throwable th) {
                throw th;
            }
        }
        return dq;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getDataDir() {
        File dq;
        if (dq() == null) {
            return super.getDataDir();
        }
        synchronized (this.dq) {
            try {
                if (this.f2413d == null) {
                    this.f2413d = new File(d(), dq());
                }
                dq = dq(this.f2413d);
            } catch (Throwable th) {
                throw th;
            }
        }
        return dq;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getDatabasePath(String str) {
        return dq() == null ? super.getDatabasePath(str) : super.getDatabasePath(dq(str));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getDir(String str, int i) {
        return (i != 0 || dq() == null) ? super.getDir(str, i) : dq(new File(super.getDir(str, i), dq()));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getExternalCacheDir() {
        File dq;
        if (dq() == null) {
            return super.getExternalCacheDir();
        }
        synchronized (this.dq) {
            try {
                if (this.ia == null) {
                    this.ia = new File(super.getExternalCacheDir(), dq());
                }
                dq = dq(this.ia);
            } catch (Throwable th) {
                throw th;
            }
        }
        return dq;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File[] getExternalCacheDirs() {
        if (dq() == null) {
            return super.getExternalCacheDirs();
        }
        File[] externalCacheDirs = super.getExternalCacheDirs();
        File[] fileArr = new File[externalCacheDirs.length];
        for (int i = 0; i < externalCacheDirs.length; i++) {
            fileArr[i] = dq(new File(externalCacheDirs[i], dq()));
        }
        return fileArr;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getExternalFilesDir(String str) {
        return dq() == null ? super.getExternalFilesDir(str) : dq(new File(super.getExternalFilesDir(str), dq()));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File[] getExternalFilesDirs(String str) {
        if (dq() == null) {
            return super.getExternalFilesDirs(str);
        }
        File[] externalFilesDirs = super.getExternalFilesDirs(str);
        File[] fileArr = new File[externalFilesDirs.length];
        for (int i = 0; i < externalFilesDirs.length; i++) {
            fileArr[i] = dq(new File(externalFilesDirs[i], dq()));
        }
        return fileArr;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File[] getExternalMediaDirs() {
        if (dq() == null) {
            return super.getExternalMediaDirs();
        }
        File[] externalMediaDirs = super.getExternalMediaDirs();
        File[] fileArr = new File[externalMediaDirs.length];
        for (int i = 0; i < externalMediaDirs.length; i++) {
            fileArr[i] = dq(new File(externalMediaDirs[i], dq()));
        }
        return fileArr;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getFilesDir() {
        File dq;
        if (dq() == null) {
            return super.getFilesDir();
        }
        synchronized (this.dq) {
            try {
                if (this.ox == null) {
                    this.ox = new File(super.getFilesDir(), dq());
                }
                dq = dq(this.ox);
            } catch (Throwable th) {
                throw th;
            }
        }
        return dq;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getNoBackupFilesDir() {
        File dq;
        if (dq() == null) {
            return super.getNoBackupFilesDir();
        }
        synchronized (this.dq) {
            try {
                if (this.p == null) {
                    this.p = new File(super.getNoBackupFilesDir(), dq());
                }
                dq = dq(this.p);
            } catch (Throwable th) {
                throw th;
            }
        }
        return dq;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getObbDir() {
        File dq;
        if (dq() == null) {
            return super.getObbDir();
        }
        synchronized (this.dq) {
            try {
                if (this.s == null) {
                    this.s = new File(super.getObbDir(), dq());
                }
                dq = dq(this.s);
            } catch (Throwable th) {
                throw th;
            }
        }
        return dq;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File[] getObbDirs() {
        if (dq() == null) {
            return super.getObbDirs();
        }
        File[] obbDirs = super.getObbDirs();
        File[] fileArr = new File[obbDirs.length];
        for (int i = 0; i < obbDirs.length; i++) {
            fileArr[i] = dq(new File(obbDirs[i], dq()));
        }
        return fileArr;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i) {
        return (i != 0 || dq() == null) ? super.getSharedPreferences(str, i) : super.getSharedPreferences(dq(str), i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean moveDatabaseFrom(Context context, String str) {
        if (dq() == null) {
            return super.moveDatabaseFrom(context, str);
        }
        throw new UnsupportedOperationException("Calling moveDatabaseFrom in plugins is not supported.");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public FileInputStream openFileInput(String str) throws FileNotFoundException {
        return dq() == null ? super.openFileInput(str) : new FileInputStream(dq(getFilesDir(), str));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public FileOutputStream openFileOutput(String str, int i) throws FileNotFoundException {
        return (i != 0 || dq() == null) ? super.openFileOutput(str, i) : new FileOutputStream(dq(getFilesDir(), str), false);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i, SQLiteDatabase.CursorFactory cursorFactory) {
        return (i != 0 || dq() == null) ? super.openOrCreateDatabase(str, i, cursorFactory) : super.openOrCreateDatabase(dq(str), i, cursorFactory);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return (i != 0 || dq() == null) ? super.openOrCreateDatabase(str, i, cursorFactory, databaseErrorHandler) : super.openOrCreateDatabase(dq(str), i, cursorFactory, databaseErrorHandler);
    }
}
