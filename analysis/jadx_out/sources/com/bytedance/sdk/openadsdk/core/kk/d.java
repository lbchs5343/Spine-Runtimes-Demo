package com.bytedance.sdk.openadsdk.core.kk;

import com.bytedance.sdk.component.utils.ig;
import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public class d extends dq {

    /* renamed from: d, reason: collision with root package name */
    private int f3135d;
    private int dq;
    private volatile boolean ox;

    public d(int i, int i2) {
        this.dq = 15;
        this.f3135d = 3;
        if (i <= 0) {
            throw new IllegalArgumentException("Max count must be positive number!");
        }
        this.dq = i;
        this.f3135d = i2;
    }

    private void ox(List<File> list) {
        long d2 = d(list);
        int size = list.size();
        if (dq(d2, size)) {
            return;
        }
        for (File file : list) {
            long length = file.length();
            if (file.delete()) {
                size--;
                d2 -= length;
                ig.dq("TotalCountLruDiskFile", "Cache file " + file + " is deleted because it exceeds cache limit");
            } else {
                ig.dq("TotalCountLruDiskFile", "Error deleting file " + file + " for trimming cache");
            }
            if (dq(file, d2, size)) {
                return;
            }
        }
    }

    private void p(List<File> list) {
        if (list != null) {
            try {
                if (list.size() == 0) {
                    return;
                }
                long d2 = d(list);
                int size = list.size();
                boolean dq = dq(d2, size);
                if (dq) {
                    ig.dq("splashLoadAd", "不满足删除条件，不执行删除操作(true)".concat(String.valueOf(dq)));
                    return;
                }
                TreeMap treeMap = new TreeMap();
                for (File file : list) {
                    treeMap.put(Long.valueOf(file.lastModified()), file);
                }
                for (Map.Entry entry : treeMap.entrySet()) {
                    if (entry != null && !dq) {
                        ig.p("splashLoadAd", "LRUDeleteFile deleting fileTime ".concat(String.valueOf(((Long) entry.getKey()).longValue())));
                        File file2 = (File) entry.getValue();
                        long length = file2.length();
                        if (file2.delete()) {
                            size--;
                            d2 -= length;
                            ig.dq("splashLoadAd", "删除 一个 Cache file 当前总个数：".concat(String.valueOf(size)));
                        } else {
                            ig.p("splashLoadAd", "Error deleting file " + file2 + " for trimming cache");
                        }
                        if (dq(file2, d2, size)) {
                            ig.dq("splashLoadAd", "停止删除 当前总个数 totalCount：" + size + " 最大值存储上限个数 maxCount " + this.dq + " 最小个数 " + this.f3135d);
                            return;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.kk.dq
    public void dq(List<File> list) {
        if (!this.ox) {
            ox(list);
        } else {
            p(list);
            this.ox = false;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.kk.dq
    public boolean dq(long j, int i) {
        return i <= this.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.core.kk.dq
    public boolean dq(File file, long j, int i) {
        return i <= this.f3135d;
    }
}
