package com.bytedance.sdk.component.ox.d.dq.dq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.ox.d.bl;
import com.bytedance.sdk.component.ox.d.cd;
import com.bytedance.sdk.component.ox.d.kx;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class ox {

    /* renamed from: d, reason: collision with root package name */
    public final bl f2053d;
    public final kx dq;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        final kx f2054d;
        final long dq;
        private Date ia;
        private int ig;
        private Date iw;
        private long kk;
        private String mn;
        private String no;
        private long o;
        final bl ox;
        private Date p;
        private String s;

        public dq(long j, kx kxVar, bl blVar) {
            this.ig = -1;
            this.dq = j;
            this.f2054d = kxVar;
            this.ox = blVar;
            if (blVar != null) {
                this.kk = blVar.mp();
                this.o = blVar.q();
                cd mn = blVar.mn();
                int dq = mn.dq();
                for (int i = 0; i < dq; i++) {
                    String dq2 = mn.dq(i);
                    String d2 = mn.d(i);
                    if ("Date".equalsIgnoreCase(dq2)) {
                        this.p = com.bytedance.sdk.component.ox.d.dq.ox.p.dq(d2);
                        this.s = d2;
                    } else if ("Expires".equalsIgnoreCase(dq2)) {
                        this.ia = com.bytedance.sdk.component.ox.d.dq.ox.p.dq(d2);
                    } else if ("Last-Modified".equalsIgnoreCase(dq2)) {
                        this.iw = com.bytedance.sdk.component.ox.d.dq.ox.p.dq(d2);
                        this.mn = d2;
                    } else if ("ETag".equalsIgnoreCase(dq2)) {
                        this.no = d2;
                    } else if ("Age".equalsIgnoreCase(dq2)) {
                        this.ig = com.bytedance.sdk.component.ox.d.dq.ox.s.d(d2, -1);
                    }
                }
            }
        }

        private ox d() {
            String str;
            if (this.ox == null) {
                return new ox(this.f2054d, null);
            }
            if ((!this.f2054d.ia() || this.ox.iw() != null) && ox.dq(this.ox, this.f2054d)) {
                com.bytedance.sdk.component.ox.d.p mn = this.f2054d.mn();
                if (mn.dq() || dq(this.f2054d)) {
                    return new ox(this.f2054d, null);
                }
                com.bytedance.sdk.component.ox.d.p ig = this.ox.ig();
                if (ig.o()) {
                    return new ox(null, this.ox);
                }
                long p = p();
                long ox = ox();
                if (mn.ox() != -1) {
                    ox = Math.min(ox, TimeUnit.SECONDS.toMillis(mn.ox()));
                }
                long j = 0;
                long millis = mn.ia() != -1 ? TimeUnit.SECONDS.toMillis(mn.ia()) : 0L;
                if (!ig.iw() && mn.mn() != -1) {
                    j = TimeUnit.SECONDS.toMillis(mn.mn());
                }
                if (!ig.dq()) {
                    long j2 = millis + p;
                    if (j2 < j + ox) {
                        bl.dq kk = this.ox.kk();
                        if (j2 >= ox) {
                            kk.dq("Warning", "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (p > AdBaseConstants.DEFAULT_DELAY_TIMESTAMP && s()) {
                            kk.dq("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new ox(null, kk.dq());
                    }
                }
                String str2 = this.no;
                if (str2 != null) {
                    str = "If-None-Match";
                } else {
                    if (this.iw != null) {
                        str2 = this.mn;
                    } else {
                        if (this.p == null) {
                            return new ox(this.f2054d, null);
                        }
                        str2 = this.s;
                    }
                    str = "If-Modified-Since";
                }
                cd.dq d2 = this.f2054d.ox().d();
                com.bytedance.sdk.component.ox.d.dq.dq.dq.dq(d2, str, str2);
                return new ox(this.f2054d.iw().dq(d2.dq()).dq(), this.ox);
            }
            return new ox(this.f2054d, null);
        }

        private static boolean dq(kx kxVar) {
            return (kxVar.dq("If-Modified-Since") == null && kxVar.dq("If-None-Match") == null) ? false : true;
        }

        private long ox() {
            if (this.ox.ig().ox() != -1) {
                return TimeUnit.SECONDS.toMillis(r0.ox());
            }
            if (this.ia != null) {
                Date date = this.p;
                long time = this.ia.getTime() - (date != null ? date.getTime() : this.o);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.iw != null && this.ox.dq().dq().query() == null) {
                Date date2 = this.p;
                long time2 = (date2 != null ? date2.getTime() : this.kk) - this.iw.getTime();
                if (time2 > 0) {
                    return time2 / 10;
                }
            }
            return 0L;
        }

        private long p() {
            Date date = this.p;
            long max = date != null ? Math.max(0L, this.o - date.getTime()) : 0L;
            int i = this.ig;
            if (i != -1) {
                max = Math.max(max, TimeUnit.SECONDS.toMillis(i));
            }
            long j = this.o;
            return max + (j - this.kk) + (this.dq - j);
        }

        private boolean s() {
            return this.ox.ig().ox() == -1 && this.ia == null;
        }

        public ox dq() {
            ox d2 = d();
            return (d2.dq == null || !this.f2054d.mn().kk()) ? d2 : new ox(null, null);
        }
    }

    public ox(kx kxVar, bl blVar) {
        this.dq = kxVar;
        this.f2053d = blVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        if (r3.ig().p() == false) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean dq(bl blVar, kx kxVar) {
        int ox = blVar.ox();
        if (ox != 200 && ox != 410 && ox != 414 && ox != 501 && ox != 203 && ox != 204) {
            if (ox != 307) {
                if (ox != 308 && ox != 404 && ox != 405) {
                    switch (ox) {
                        case TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX /* 300 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_NOTIFY_DEAD_LOCK /* 301 */:
                            break;
                        case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_AUDIO_EFFECT /* 302 */:
                            break;
                        default:
                            return false;
                    }
                }
            }
            if (blVar.dq("Expires") == null) {
                if (blVar.ig().ox() == -1) {
                    if (!blVar.ig().s()) {
                    }
                }
            }
        }
        return (blVar.ig().d() || kxVar.mn().d()) ? false : true;
    }
}
