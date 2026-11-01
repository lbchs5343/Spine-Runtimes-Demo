package com.bytedance.sdk.component.ig.d.dq;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.DataLoaderHelper;
import com.bykv.vk.component.ttvideo.TTVideoEngine;
import com.bykv.vk.openvk.component.video.api.dq.d;
import com.bykv.vk.openvk.component.video.api.ox.p;
import java.io.File;

/* loaded from: classes.dex */
public class dq implements d {
    private long dq;

    /* renamed from: d, reason: collision with root package name */
    private String f1936d = "tt_video_reward_full";
    private String ox = "tt_video_brand";
    private String p = "tt_video_splash";
    private String s = "tt_video_default";
    private String iw = null;
    private String mn = null;
    private String ia = null;
    private String kk = null;
    private String o = null;
    private String no = null;

    @Override // com.bykv.vk.openvk.component.video.api.dq.d
    public long d(p pVar) {
        return this.dq;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq.d
    public String d() {
        if (this.ia == null) {
            this.ia = this.no + File.separator + this.ox;
            File file = new File(this.ia);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.ia;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq.d
    public String dq() {
        if (this.mn == null) {
            this.mn = this.no + File.separator + this.f1936d;
            File file = new File(this.mn);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.mn;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq.d
    public void dq(String str) {
        if (!TextUtils.isEmpty(this.no) && !this.no.equals(str)) {
            this.iw = null;
            this.mn = null;
            this.ia = null;
            this.kk = null;
            this.o = null;
        }
        this.no = str;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq.d
    public boolean dq(p pVar) {
        DataLoaderHelper.DataLoaderCacheInfo cacheInfoByFilePath = TTVideoEngine.getCacheInfoByFilePath(pVar.fw(), pVar.s());
        if (cacheInfoByFilePath != null) {
            boolean mp = pVar.mp();
            this.dq = cacheInfoByFilePath.mCacheSizeFromZero;
            int d2 = pVar.d() > 0 ? pVar.d() : pVar.iw();
            if (mp) {
                d2 = (int) pVar.ig();
            }
            if (cacheInfoByFilePath.mCacheSizeFromZero >= d2) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq.d
    public String ox() {
        if (this.kk == null) {
            this.kk = this.no + File.separator + this.p;
            File file = new File(this.kk);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.kk;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq.d
    public String p() {
        if (this.o == null) {
            this.o = this.no + File.separator + this.s;
            File file = new File(this.o);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.o;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq.d
    public void s() {
    }
}
