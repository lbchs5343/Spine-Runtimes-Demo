package com.bytedance.embedapplog;

import android.os.Build;
import android.os.Environment;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.awf;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import org.json.JSONObject;

/* loaded from: classes.dex */
abstract class ji {

    /* renamed from: d, reason: collision with root package name */
    boolean f727d;
    boolean dq;
    boolean ox;
    boolean p;

    public ji(boolean z, boolean z2) {
        this.f727d = z;
        this.ox = z2;
        this.p = false;
    }

    public ji(boolean z, boolean z2, boolean z3) {
        this.f727d = z;
        this.ox = z2;
        this.p = z3;
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x00d7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String dq(String str, String str2) {
        RandomAccessFile randomAccessFile;
        int checkSelfPermission;
        byte[] bArr;
        int read;
        if ("mounted".equals(Environment.getExternalStorageState())) {
            String str3 = Environment.getExternalStorageDirectory().getPath() + "/Android/data/com.snssdk.api.embed/cache";
            String i = awf.i(str3, "/", str);
            FileLock fileLock = null;
            try {
                File file = new File(str3);
                if (file.exists() || file.mkdirs()) {
                    File file2 = new File(i);
                    RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, "rwd");
                    try {
                        fileLock = randomAccessFile2.getChannel().lock();
                        if (file2.isFile() && (read = randomAccessFile2.read((bArr = new byte[TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA]), 0, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA)) > 0 && read < 129) {
                            String str4 = new String(bArr, 0, read, "UTF-8");
                            if (c.dq(str4)) {
                                if (fileLock != null) {
                                    try {
                                        fileLock.release();
                                    } catch (Exception unused) {
                                    }
                                }
                                try {
                                    randomAccessFile2.close();
                                } catch (Exception unused2) {
                                }
                                return str4;
                            }
                        }
                        byte[] bytes = str2.getBytes("UTF-8");
                        randomAccessFile2.setLength(0L);
                        randomAccessFile2.write(bytes);
                        if (fileLock != null) {
                            try {
                                fileLock.release();
                            } catch (Exception unused3) {
                            }
                        }
                        try {
                            randomAccessFile2.close();
                        } catch (Exception unused4) {
                        }
                        return str2;
                    } catch (IOException e2) {
                        randomAccessFile = randomAccessFile2;
                        e = e2;
                        try {
                            if (Build.VERSION.SDK_INT >= 23) {
                                checkSelfPermission = le.iw().dq.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE");
                                if (checkSelfPermission != 0) {
                                    throw new SecurityException(e);
                                }
                                jo.d(e);
                            }
                            if (fileLock != null) {
                                try {
                                    fileLock.release();
                                } catch (Exception unused5) {
                                }
                            }
                            if (randomAccessFile != null) {
                                try {
                                    randomAccessFile.close();
                                } catch (Exception unused6) {
                                }
                            }
                            return str2;
                        } catch (Throwable th) {
                            th = th;
                            if (fileLock != null) {
                                try {
                                    fileLock.release();
                                } catch (Exception unused7) {
                                }
                            }
                            if (randomAccessFile != null) {
                                throw th;
                            }
                            try {
                                randomAccessFile.close();
                                throw th;
                            } catch (Exception unused8) {
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        randomAccessFile = randomAccessFile2;
                        th = th2;
                        if (fileLock != null) {
                        }
                        if (randomAccessFile != null) {
                        }
                    }
                }
            } catch (IOException e3) {
                e = e3;
                randomAccessFile = null;
            } catch (Throwable th3) {
                th = th3;
                randomAccessFile = null;
            }
        }
        return str2;
    }

    public abstract boolean dq(JSONObject jSONObject);
}
