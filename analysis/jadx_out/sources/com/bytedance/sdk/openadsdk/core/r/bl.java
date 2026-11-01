package com.bytedance.sdk.openadsdk.core.r;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class bl {

    /* renamed from: d, reason: collision with root package name */
    private static int f3424d;
    private static int dq;
    private static int ia;
    private static int iw;
    private static int kk;
    private static int mn;
    private static int o;
    private static final ArrayList<int[]> ox = new ArrayList<>();
    private static final ArrayList<int[]> p = new ArrayList<>();
    private static int s;
    private final int ig;
    private final int jy;
    private final int mp;
    private final int no;
    private final int q;

    public bl(JSONObject jSONObject) {
        this.jy = jSONObject.optInt("carousel_pos", -1);
        this.no = jSONObject.optInt("insert_ad_control", 0);
        this.ig = jSONObject.optInt("refresh_ad_control", 0);
        this.q = jSONObject.optInt("refresh_ad_imp_max_time", 0);
        this.mp = jSONObject.optInt("force_refresh_ad_control", 0);
    }

    public static int d(j jVar) {
        bl iw2 = iw(jVar);
        if (iw2 == null) {
            return 0;
        }
        return iw2.ig;
    }

    public static boolean d() {
        return iw == 1;
    }

    public static boolean d(int i, j jVar) {
        return s(jVar) > 0 && i * 1000 >= s(jVar);
    }

    public static boolean d(j jVar, boolean z) {
        return (!z || iw == 1) && d(jVar) == 1 && p(jVar) > 0;
    }

    public static int dq(j jVar) {
        bl iw2 = iw(jVar);
        if (iw2 == null) {
            return 0;
        }
        return iw2.no;
    }

    public static void dq(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("app_common_config");
        if (optJSONObject != null) {
            try {
                int optInt = optJSONObject.optInt("insert_ad_control", 1);
                dq = optInt;
                if (optInt < 0 || optInt > 1) {
                    dq = 1;
                }
                f3424d = optJSONObject.optInt("insert_ad_req_num", 3);
                s = optJSONObject.optInt("insert_ad_toast_max_time", 5);
                int optInt2 = optJSONObject.optInt("refresh_ad_control", 1);
                iw = optInt2;
                if (optInt2 < 0 || optInt2 > 1) {
                    iw = 1;
                }
                mn = optJSONObject.optInt("refresh_ad_req_num", 3);
                int optInt3 = optJSONObject.optInt("force_refresh_ad_control", 1);
                ia = optInt3;
                if (optInt3 < 0 || optInt3 > 1) {
                    ia = 1;
                }
                kk = optJSONObject.optInt("force_refresh_ad_pause_over_time", MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
                o = optJSONObject.optInt("refresh_ad_reduce_time", 0);
                JSONArray optJSONArray = optJSONObject.optJSONArray("insert_ad_pt_show_time");
                if (optJSONArray == null || optJSONArray.length() <= 0) {
                    ox.add(new int[]{0, 15});
                } else {
                    ox.clear();
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONArray optJSONArray2 = optJSONArray.optJSONArray(i);
                        if (optJSONArray2 != null && optJSONArray2.length() == 2) {
                            ox.add(new int[]{optJSONArray2.optInt(0), optJSONArray2.optInt(1)});
                        }
                    }
                }
                JSONArray optJSONArray3 = optJSONObject.optJSONArray("insert_ad_vd_show_time");
                if (optJSONArray3 == null || optJSONArray3.length() <= 0) {
                    ArrayList<int[]> arrayList = p;
                    arrayList.add(new int[]{0, 3});
                    arrayList.add(new int[]{30, 40});
                    return;
                }
                p.clear();
                for (int i2 = 0; i2 < optJSONArray3.length(); i2++) {
                    JSONArray optJSONArray4 = optJSONArray3.optJSONArray(i2);
                    if (optJSONArray4 != null && optJSONArray4.length() == 2) {
                        p.add(new int[]{optJSONArray4.optInt(0), optJSONArray4.optInt(1)});
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public static boolean dq() {
        return dq == 1;
    }

    public static boolean dq(int i, j jVar) {
        return s(jVar) > 0 && i * 1000 >= s(jVar);
    }

    public static boolean dq(j jVar, boolean z) {
        return (!z || dq == 1) && dq(jVar) == 1 && p(jVar) > 0;
    }

    public static boolean dq(boolean z, int i) {
        if (z) {
            Iterator<int[]> it = p.iterator();
            while (it.hasNext()) {
                int[] next = it.next();
                if (i >= next[0] && i <= next[1]) {
                    return true;
                }
            }
        } else {
            Iterator<int[]> it2 = ox.iterator();
            while (it2.hasNext()) {
                int[] next2 = it2.next();
                if (i >= next2[0] && i <= next2[1]) {
                    return true;
                }
            }
        }
        return false;
    }

    public static int ia() {
        return o / 1000;
    }

    public static int iw() {
        return s;
    }

    private static bl iw(j jVar) {
        if (jVar == null) {
            return null;
        }
        return jVar.c();
    }

    public static int mn() {
        return kk;
    }

    public static int ox(j jVar) {
        bl iw2 = iw(jVar);
        if (iw2 == null) {
            return 0;
        }
        return iw2.mp;
    }

    public static boolean ox() {
        return ia == 1;
    }

    public static boolean ox(j jVar, boolean z) {
        return (!z || ia == 1) && ox(jVar) == 1 && p(jVar) > 0;
    }

    public static int p() {
        return f3424d;
    }

    public static int p(j jVar) {
        bl iw2 = iw(jVar);
        if (iw2 == null) {
            return -1;
        }
        return iw2.jy;
    }

    public static boolean p(j jVar, boolean z) {
        return dq(jVar, z) || d(jVar, z) || ox(jVar, z);
    }

    public static int s() {
        return mn;
    }

    public static int s(j jVar) {
        bl iw2 = iw(jVar);
        if (iw2 == null) {
            return 0;
        }
        return iw2.q;
    }

    public void d(JSONObject jSONObject) {
        try {
            jSONObject.put("carousel_pos", this.jy);
            jSONObject.put("insert_ad_control", this.no);
            jSONObject.put("refresh_ad_control", this.ig);
            jSONObject.put("refresh_ad_imp_max_time", this.q);
            jSONObject.put("force_refresh_ad_control", this.mp);
        } catch (JSONException unused) {
        }
    }
}
