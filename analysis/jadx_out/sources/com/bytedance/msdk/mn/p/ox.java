package com.bytedance.msdk.mn.p;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.mn.s;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox implements com.bytedance.msdk.mn.d {
    private static volatile ox dq;
    private int ox = -1;
    private long p = -1;
    private int s = -1;
    private int iw = -1;
    private int mn = -1;
    private int ia = -1;
    private int kk = -1;

    /* renamed from: d, reason: collision with root package name */
    private bl f1122d = s.d();

    private ox() {
    }

    private synchronized JSONObject d() {
        try {
            String d2 = this.f1122d.d("app_common_config");
            if (TextUtils.isEmpty(d2)) {
                return null;
            }
            if (!d2.startsWith("[") && !d2.startsWith("{")) {
                d2 = com.bytedance.msdk.ia.dq.d(d2, com.bytedance.msdk.ia.d.dq());
            }
            if (!TextUtils.isEmpty(d2)) {
                try {
                    return new JSONObject(d2);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            return null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static ox dq() {
        if (dq == null) {
            synchronized (ox.class) {
                try {
                    if (dq == null) {
                        dq = new ox();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private synchronized void dq(JSONObject jSONObject) {
        try {
            int optInt = jSONObject.optInt("event_batch_size", 100);
            this.ox = optInt;
            if (optInt <= 0 || optInt > 1000) {
                this.ox = 100;
            }
            long optLong = jSONObject.optLong("event_routine_interval", 120000L);
            this.p = optLong;
            if (optLong < ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT || optLong > 300000) {
                this.p = 120000L;
            }
            int optInt2 = jSONObject.optInt("dynamic_adapter_type", 0);
            this.s = optInt2;
            if (optInt2 != 0 && optInt2 != 1) {
                this.s = 0;
            }
            this.mn = jSONObject.optInt("rv_start_time", MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
            int optInt3 = jSONObject.optInt("wf_dynamic_adapter_type", 0);
            this.iw = optInt3;
            if (optInt3 != 0 && optInt3 != 1) {
                this.iw = 0;
            }
            com.bytedance.msdk.core.s.d.p.dq().dq(jSONObject.optInt("pre_fetch_count", 20));
            this.ia = jSONObject.optInt("adapter_plugin_loader_gdt", -1);
            this.kk = jSONObject.optInt("can_log", -1);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bytedance.msdk.mn.d
    public synchronized void d(JSONObject jSONObject) {
        if (jSONObject != null) {
            dq(jSONObject);
            String jSONObject2 = jSONObject.toString();
            if (!TextUtils.isEmpty(jSONObject2)) {
                this.f1122d.dq("app_common_config", jSONObject2);
            }
        }
    }

    @Override // com.bytedance.msdk.mn.d
    public int ia() {
        JSONObject d2;
        int i = this.mn;
        if (i != -1) {
            return i;
        }
        if (this.f1122d == null || (d2 = d()) == null) {
            return MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE;
        }
        dq(d2);
        return this.mn;
    }

    @Override // com.bytedance.msdk.mn.d
    public int iw() {
        JSONObject d2;
        int i = this.s;
        if (i != -1) {
            return i;
        }
        if (this.f1122d == null || (d2 = d()) == null) {
            return 0;
        }
        dq(d2);
        return this.s;
    }

    @Override // com.bytedance.msdk.mn.d
    public synchronized boolean kk() {
        JSONObject d2;
        int i = this.ia;
        if (i != -1) {
            return i == 1;
        }
        if (this.f1122d == null || (d2 = d()) == null) {
            return false;
        }
        dq(d2);
        return this.ia == 1;
    }

    @Override // com.bytedance.msdk.mn.d
    public int mn() {
        JSONObject d2;
        int i = this.iw;
        if (i != -1) {
            return i;
        }
        if (this.f1122d == null || (d2 = d()) == null) {
            return 0;
        }
        dq(d2);
        return this.iw;
    }

    @Override // com.bytedance.msdk.mn.d
    public boolean no() {
        JSONObject d2;
        int i = this.kk;
        if (i != -1) {
            return i == 1;
        }
        if (this.f1122d != null && (d2 = d()) != null) {
            dq(d2);
            if (this.kk == 1) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.msdk.mn.d
    public int o() {
        return this.ia;
    }

    @Override // com.bytedance.msdk.mn.d
    public synchronized int p() {
        JSONObject d2;
        int i = this.ox;
        if (i != -1) {
            return i;
        }
        if (this.f1122d == null || (d2 = d()) == null) {
            return 100;
        }
        dq(d2);
        return this.ox;
    }

    @Override // com.bytedance.msdk.mn.d
    public synchronized long s() {
        JSONObject d2;
        long j = this.p;
        if (j != -1) {
            return j;
        }
        if (this.f1122d == null || (d2 = d()) == null) {
            return 120000L;
        }
        dq(d2);
        return this.p;
    }
}
