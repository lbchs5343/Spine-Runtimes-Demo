package com.bytedance.sdk.component.iw.ox.dq;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import java.io.File;

/* loaded from: classes.dex */
public class dq implements com.bytedance.sdk.component.iw.d, Cloneable {
    private static volatile com.bytedance.sdk.component.iw.d iw;

    /* renamed from: d, reason: collision with root package name */
    private int f1953d;
    private long dq;
    private boolean ox;
    private boolean p;
    private File s;

    public dq(int i, long j, File file) {
        this(i, j, i != 0, j != 0, file);
    }

    public dq(int i, long j, boolean z, boolean z2, File file) {
        this.dq = j;
        this.f1953d = i;
        this.ox = z;
        this.p = z2;
        this.s = file;
    }

    public static com.bytedance.sdk.component.iw.d dq(File file) {
        int min;
        long min2;
        file.mkdirs();
        if (iw == null) {
            min = Math.min(Long.valueOf(Runtime.getRuntime().maxMemory()).intValue() / 16, 31457280);
            min2 = Math.min(ia() / 16, 41943040L);
        } else {
            min = Math.min(iw.d() / 2, 31457280);
            min2 = Math.min(iw.dq() / 2, 41943040L);
        }
        return new dq(Math.max(min, 26214400), Math.max(min2, 20971520L), file);
    }

    public static void dq(Context context, com.bytedance.sdk.component.iw.d dVar) {
        if (dVar != null) {
            iw = dVar;
        } else {
            iw = dq(new File(com.bytedance.sdk.openadsdk.api.plugin.d.d(context), "image"));
        }
    }

    private static long ia() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getAvailableBlocks() * statFs.getBlockSize();
    }

    public static com.bytedance.sdk.component.iw.d mn() {
        return iw;
    }

    @Override // com.bytedance.sdk.component.iw.d
    @ATSMethod(2)
    public int d() {
        return this.f1953d;
    }

    @Override // com.bytedance.sdk.component.iw.d
    @ATSMethod(1)
    public long dq() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.component.iw.d
    @ATSMethod(6)
    public boolean iw() {
        return true;
    }

    @Override // com.bytedance.sdk.component.iw.d
    @ATSMethod(3)
    public boolean ox() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.component.iw.d
    @ATSMethod(4)
    public boolean p() {
        return this.p;
    }

    @Override // com.bytedance.sdk.component.iw.d
    @ATSMethod(5)
    public File s() {
        return this.s;
    }
}
