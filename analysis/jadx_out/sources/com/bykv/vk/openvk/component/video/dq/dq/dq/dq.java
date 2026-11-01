package com.bykv.vk.openvk.component.video.dq.dq.dq;

import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.api.ox.p;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class dq implements com.bykv.vk.openvk.component.video.api.dq.d {
    private String dq = "video_reward_full";

    /* renamed from: d, reason: collision with root package name */
    private String f561d = "video_brand";
    private String ox = "video_splash";
    private String p = "video_default";
    private String s = null;
    private String iw = null;
    private String mn = null;
    private String ia = null;
    private String kk = null;

    private static void dq(File[] fileArr, int i, Set<String> set) {
        if (i >= 0 && fileArr != null) {
            try {
                if (fileArr.length > i) {
                    List asList = Arrays.asList(fileArr);
                    Collections.sort(asList, new Comparator<File>() { // from class: com.bykv.vk.openvk.component.video.dq.dq.dq.dq.1
                        @Override // java.util.Comparator
                        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
                        public int compare(File file, File file2) {
                            long lastModified = file2.lastModified() - file.lastModified();
                            if (lastModified == 0) {
                                return 0;
                            }
                            return lastModified < 0 ? -1 : 1;
                        }
                    });
                    while (i < asList.size()) {
                        File file = (File) asList.get(i);
                        if (set != null && !set.contains(file.getAbsolutePath())) {
                            ((File) asList.get(i)).delete();
                        }
                        i++;
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private List<com.bykv.vk.openvk.component.video.api.dq.dq> iw() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.bykv.vk.openvk.component.video.api.dq.dq(new File(dq()).listFiles(), com.bykv.vk.openvk.component.video.dq.dq.ox()));
        arrayList.add(new com.bykv.vk.openvk.component.video.api.dq.dq(new File(ox()).listFiles(), com.bykv.vk.openvk.component.video.dq.dq.d()));
        arrayList.add(new com.bykv.vk.openvk.component.video.api.dq.dq(new File(d()).listFiles(), com.bykv.vk.openvk.component.video.dq.dq.p()));
        arrayList.add(new com.bykv.vk.openvk.component.video.api.dq.dq(new File(p()).listFiles(), com.bykv.vk.openvk.component.video.dq.dq.s()));
        return arrayList;
    }

    private Set<String> mn() {
        HashSet hashSet = new HashSet();
        for (com.bykv.vk.openvk.component.video.dq.dq.dq dqVar : com.bykv.vk.openvk.component.video.dq.dq.dq.dq.values()) {
            if (dqVar != null && dqVar.dq() != null) {
                p dq = dqVar.dq();
                hashSet.add(com.bykv.vk.openvk.component.video.dq.s.ox.d(dq.s(), dq.fw()).getAbsolutePath());
                hashSet.add(com.bykv.vk.openvk.component.video.dq.s.ox.ox(dq.s(), dq.fw()).getAbsolutePath());
            }
        }
        for (com.bykv.vk.openvk.component.video.dq.dq.d.d dVar : com.bykv.vk.openvk.component.video.dq.dq.d.ox.dq.values()) {
            if (dVar != null && dVar.dq() != null) {
                p dq2 = dVar.dq();
                hashSet.add(com.bykv.vk.openvk.component.video.dq.s.ox.d(dq2.s(), dq2.fw()).getAbsolutePath());
                hashSet.add(com.bykv.vk.openvk.component.video.dq.s.ox.ox(dq2.s(), dq2.fw()).getAbsolutePath());
            }
        }
        return hashSet;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq.d
    public long d(p pVar) {
        if (TextUtils.isEmpty(pVar.s()) || TextUtils.isEmpty(pVar.fw())) {
            return 0L;
        }
        return com.bykv.vk.openvk.component.video.dq.s.ox.dq(pVar.s(), pVar.fw());
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq.d
    public String d() {
        if (this.mn == null) {
            this.mn = this.s + File.separator + this.f561d;
            File file = new File(this.mn);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.mn;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq.d
    public String dq() {
        if (this.iw == null) {
            this.iw = this.s + File.separator + this.dq;
            File file = new File(this.iw);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.iw;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq.d
    public void dq(String str) {
        this.s = str;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq.d
    public boolean dq(p pVar) {
        if (TextUtils.isEmpty(pVar.s()) || TextUtils.isEmpty(pVar.fw())) {
            return false;
        }
        return new File(pVar.s(), pVar.fw()).exists();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq.d
    public String ox() {
        if (this.ia == null) {
            this.ia = this.s + File.separator + this.ox;
            File file = new File(this.ia);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.ia;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq.d
    public String p() {
        if (this.kk == null) {
            this.kk = this.s + File.separator + this.p;
            File file = new File(this.kk);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.kk;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq.d
    public synchronized void s() {
        try {
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("Exec clear video cache ");
            com.bykv.vk.openvk.component.video.api.iw.ox.dq(this.s);
            List<com.bykv.vk.openvk.component.video.api.dq.dq> iw = iw();
            if (Build.VERSION.SDK_INT >= 23) {
                Set<String> set = null;
                for (com.bykv.vk.openvk.component.video.api.dq.dq dqVar : iw) {
                    File[] dq = dqVar.dq();
                    if (dq != null && dq.length >= dqVar.d()) {
                        if (set == null) {
                            set = mn();
                        }
                        int d2 = dqVar.d() - 2;
                        if (d2 < 0) {
                            d2 = 0;
                        }
                        dq(dqVar.dq(), d2, set);
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
