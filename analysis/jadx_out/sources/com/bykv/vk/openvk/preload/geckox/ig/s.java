package com.bykv.vk.openvk.preload.geckox.ig;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.awf;
import java.util.List;

/* loaded from: classes.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "package_version")
    private long f653d;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "group_name")
    private String dq;
    private String iw;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "package_type")
    private int mn;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "channel")
    private String ox;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "content")
    private dq p;
    private long s;

    public static class d {

        /* renamed from: d, reason: collision with root package name */
        @Deprecated
        String f654d;

        @com.bykv.vk.openvk.preload.dq.dq.ox(dq = TTDownloadField.TT_ID)
        long dq;

        @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "url_list")
        List<String> ox;

        @com.bykv.vk.openvk.preload.dq.dq.ox(dq = TTDownloadField.TT_MD5)
        String p;

        @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "size")
        long s;

        public String d() {
            return this.p;
        }

        public long dq() {
            return this.dq;
        }

        public long ox() {
            return this.s;
        }

        public List<String> p() {
            return this.ox;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Package{url='");
            sb.append(this.f654d);
            sb.append("', md5='");
            return awf.ad(sb, this.p, "'}");
        }
    }

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "patch")
        private d f655d;

        @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "package")
        private d dq;
    }

    public String d() {
        return this.dq;
    }

    public String dq() {
        return this.iw;
    }

    public void dq(long j) {
        this.s = j;
    }

    public void dq(String str) {
        this.iw = str;
    }

    public int ia() {
        return this.mn;
    }

    public d iw() {
        return this.p.dq;
    }

    public d mn() {
        return this.p.f655d;
    }

    public long ox() {
        return this.s;
    }

    public long p() {
        return this.f653d;
    }

    public String s() {
        return this.ox;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UpdatePackage{version=");
        sb.append(this.f653d);
        sb.append(", channel='");
        sb.append(this.ox);
        sb.append("', content=");
        sb.append(this.p);
        sb.append(", packageType=");
        return awf.s(sb, this.mn, '}');
    }
}
