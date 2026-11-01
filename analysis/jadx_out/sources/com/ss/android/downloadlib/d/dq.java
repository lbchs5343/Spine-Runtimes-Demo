package com.ss.android.downloadlib.d;

import android.net.Uri;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.model.DeepLink;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.mn.ig;
import com.ss.android.downloadlib.mn.mp;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {
    private static final String dq = "dq";

    public static void d(com.ss.android.downloadad.api.dq.d dVar) {
        if (dVar == null) {
            return;
        }
        String iw = com.ss.android.socialbase.downloader.mn.dq.ox().d("app_link_opt") == 1 ? dVar.iw() : null;
        JSONObject dq2 = com.ss.android.downloadlib.mn.iw.dq(new JSONObject(), dVar);
        mp.dq(dq2, "applink_source", "dialog_click_by_sdk");
        com.ss.android.downloadlib.p.dq.dq().d("applink_click", dq2, dVar);
        com.ss.android.downloadlib.addownload.d.mn dq3 = com.ss.android.downloadlib.mn.kk.dq(iw, dVar);
        if (dq3.getType() == 2) {
            if (!TextUtils.isEmpty(iw)) {
                d("dialog_by_url", dq3, dq2, dVar);
            }
            dq3 = com.ss.android.downloadlib.mn.kk.dq(no.getContext(), dVar.s(), dVar);
        }
        int type = dq3.getType();
        if (type == 1) {
            d("dialog_by_url", dq2, dVar);
            return;
        }
        if (type == 3) {
            dq("dialog_by_package", dq2, dVar);
        } else if (type != 4) {
            com.ss.android.downloadlib.s.ox.dq().d("AppLinkClickDialog default");
        } else {
            dq("dialog_by_package", dq3, dq2, dVar);
        }
    }

    public static void d(String str, com.ss.android.downloadlib.addownload.d.mn mnVar, JSONObject jSONObject, com.ss.android.downloadad.api.dq.dq dqVar) {
        mp.dq(jSONObject, "applink_source", str);
        mp.dq(jSONObject, "error_code", Integer.valueOf(mnVar.dq()));
        mp.dq(jSONObject, "download_scene", Integer.valueOf(dqVar.r()));
        com.ss.android.downloadlib.p.dq.dq().d("deeplink_url_open_fail", jSONObject, dqVar);
    }

    public static void d(String str, final JSONObject jSONObject, final com.ss.android.downloadad.api.dq.dq dqVar) {
        mp.dq(jSONObject, "applink_source", str);
        mp.dq(jSONObject, "download_scene", Integer.valueOf(dqVar.r()));
        com.ss.android.downloadlib.p.dq.dq().d("deeplink_url_open", jSONObject, dqVar);
        str.getClass();
        switch (str) {
            case "auto_by_url":
            case "by_url":
            case "notify_by_url":
            case "dialog_by_url":
                if ((no.kk().optInt("check_applink_mode") & 1) == 0) {
                    no.d();
                    no.getContext();
                    dqVar.i();
                    dqVar.k();
                    dqVar.le();
                    dqVar.s();
                    break;
                } else {
                    mp.dq(jSONObject, "check_applink_result_by_sdk", (Object) 1);
                    s.dq().dq(new p() { // from class: com.ss.android.downloadlib.d.dq.2
                        @Override // com.ss.android.downloadlib.d.p
                        public void dq(boolean z) {
                            com.ss.android.downloadlib.p.dq.dq().d(z ? "deeplink_success" : "deeplink_failed", jSONObject, dqVar);
                            if (z) {
                                no.i();
                                no.getContext();
                                dqVar.i();
                                dqVar.k();
                                dqVar.le();
                                dqVar.s();
                            }
                        }
                    });
                    break;
                }
        }
    }

    public static void dq(com.ss.android.downloadad.api.dq.d dVar) {
        String iw = dVar.iw();
        JSONObject dq2 = com.ss.android.downloadlib.mn.iw.dq(new JSONObject(), dVar);
        mp.dq(dq2, "applink_source", "notify_click_by_sdk");
        com.ss.android.downloadlib.p.dq.dq().d("applink_click", dq2, dVar);
        com.ss.android.downloadlib.addownload.d.mn dq3 = com.ss.android.downloadlib.mn.kk.dq(iw, dVar);
        if (dq3.getType() == 2) {
            if (!TextUtils.isEmpty(iw)) {
                d("notify_by_url", dq3, dq2, dVar);
            }
            dq3 = com.ss.android.downloadlib.mn.kk.dq(no.getContext(), dVar.s(), dVar);
        }
        int type = dq3.getType();
        if (type == 1) {
            d("notify_by_url", dq2, dVar);
            return;
        }
        if (type == 3) {
            dq("notify_by_package", dq2, dVar);
        } else if (type != 4) {
            com.ss.android.downloadlib.s.ox.dq().d("AppLinkClickNotification default");
        } else {
            dq("notify_by_package", dq3, dq2, dVar);
        }
    }

    public static void dq(com.ss.android.downloadlib.addownload.d.mn mnVar, com.ss.android.downloadlib.addownload.d.s sVar, boolean z) {
        String dq2 = mp.dq(mnVar.d(), "open_market");
        JSONObject jSONObject = new JSONObject();
        mp.dq(jSONObject, "ttdownloader_type", LiveConfigKey.BACKUP);
        int type = mnVar.getType();
        if (type == 5) {
            dq(dq2, jSONObject, sVar, z);
        } else {
            if (type != 6) {
                return;
            }
            mp.dq(jSONObject, "error_code", Integer.valueOf(mnVar.dq()));
            mp.dq(jSONObject, "download_scene", Integer.valueOf(sVar.r()));
            com.ss.android.downloadlib.p.dq.dq().d("market_open_failed", jSONObject, sVar);
        }
    }

    public static void dq(String str, com.ss.android.downloadlib.addownload.d.mn mnVar, JSONObject jSONObject, com.ss.android.downloadad.api.dq.dq dqVar) {
        mp.dq(jSONObject, "applink_source", str);
        mp.dq(jSONObject, "error_code", Integer.valueOf(mnVar.dq()));
        mp.dq(jSONObject, "download_scene", Integer.valueOf(dqVar.r()));
        com.ss.android.downloadlib.p.dq.dq().d("deeplink_app_open_fail", jSONObject, dqVar);
    }

    public static void dq(String str, final JSONObject jSONObject, final com.ss.android.downloadad.api.dq.dq dqVar) {
        mp.dq(jSONObject, "applink_source", str);
        mp.dq(jSONObject, "download_scene", Integer.valueOf(dqVar.r()));
        com.ss.android.downloadlib.p.dq.dq().d("deeplink_app_open", jSONObject, dqVar);
        str.getClass();
        switch (str) {
            case "notify_by_package":
            case "auto_by_package":
            case "by_package":
            case "dialog_by_package":
                if ((no.kk().optInt("check_applink_mode") & 1) == 0) {
                    no.d();
                    no.getContext();
                    dqVar.i();
                    dqVar.k();
                    dqVar.le();
                    dqVar.s();
                    break;
                } else {
                    mp.dq(jSONObject, "check_applink_result_by_sdk", (Object) 1);
                    s.dq().dq(new p() { // from class: com.ss.android.downloadlib.d.dq.1
                        @Override // com.ss.android.downloadlib.d.p
                        public void dq(boolean z) {
                            com.ss.android.downloadlib.p.dq.dq().d(z ? "deeplink_success" : "deeplink_failed", jSONObject, dqVar);
                            if (z) {
                                no.i();
                                no.getContext();
                                dqVar.i();
                                dqVar.k();
                                dqVar.le();
                                dqVar.s();
                            }
                        }
                    });
                    break;
                }
        }
    }

    public static void dq(final String str, final JSONObject jSONObject, final com.ss.android.downloadlib.addownload.d.s sVar, boolean z) {
        if (jSONObject == null) {
            try {
                jSONObject = new JSONObject();
            } catch (Exception e2) {
                com.ss.android.downloadlib.s.ox.dq().dq(e2, "onMarketSuccess");
                return;
            }
        }
        mp.dq(jSONObject, "applink_source", str);
        mp.dq(jSONObject, "download_scene", Integer.valueOf(sVar.r()));
        if (z) {
            com.ss.android.downloadlib.p.dq.dq().d("market_open_success", jSONObject, sVar);
        }
        if ((no.kk().optInt("check_applink_mode") & 4) != 0) {
            s.dq().d(new p() { // from class: com.ss.android.downloadlib.d.dq.3
                @Override // com.ss.android.downloadlib.d.p
                public void dq(boolean z2) {
                    if (!z2 && !"open_market".equals(str)) {
                        dq.dq(com.ss.android.downloadlib.mn.kk.dq(no.getContext(), Uri.parse("market://details?id=" + sVar.s())), sVar, false);
                    }
                    com.ss.android.downloadlib.p.dq.dq().dq(z2 ? "market_delay_success" : "market_delay_failed", jSONObject, sVar);
                    if (z2) {
                        no.i();
                        no.getContext();
                        sVar.f9152d.getPackageName();
                    }
                }
            });
        } else {
            no.d();
            no.getContext();
            sVar.f9152d.getPackageName();
        }
        com.ss.android.downloadad.api.dq.d dq2 = com.ss.android.downloadlib.addownload.d.iw.dq().dq(sVar.f9152d.getPackageName());
        if (dq2 != null) {
            ig.dq().dq(dq, "onMarketSuccess", "商店场景,缓存中已有NativeDownloadModel记录,进行复用");
        } else {
            ig.dq().dq(dq, "onMarketSuccess", "商店场景,缓存中没有相应的NativeDownloadModel,需要新建");
            dq2 = new com.ss.android.downloadad.api.dq.d(sVar.f9152d, sVar.ox, sVar.p);
        }
        dq2.s(2);
        dq2.iw(System.currentTimeMillis());
        dq2.ia(4);
        dq2.kk(2);
        com.ss.android.downloadlib.addownload.d.iw.dq().dq(dq2);
        ig.dq().dq(dq, "onMarketSuccess", "检测到跳商店成功事件,准备开始检测安装行为");
        com.ss.android.downloadlib.kk.dq().dq(sVar, dq2);
    }

    public static boolean dq(long j) {
        return com.ss.android.downloadlib.addownload.d.iw.dq().p(j) == null;
    }

    public static boolean dq(com.ss.android.downloadlib.addownload.d.s sVar) {
        boolean z;
        DeepLink deepLink = sVar.f9152d.getDeepLink();
        String openUrl = deepLink == null ? null : deepLink.getOpenUrl();
        JSONObject dq2 = com.ss.android.downloadlib.mn.iw.dq(new JSONObject(), sVar);
        mp.dq(dq2, "applink_source", "click_by_sdk");
        com.ss.android.downloadlib.p.dq.dq().d("applink_click", dq2, sVar);
        com.ss.android.downloadlib.addownload.d.mn dq3 = com.ss.android.downloadlib.mn.kk.dq(openUrl, sVar);
        if (dq3.getType() == 2) {
            if (!TextUtils.isEmpty(openUrl)) {
                d("by_url", dq3, dq2, sVar);
            }
            dq3 = com.ss.android.downloadlib.mn.kk.dq(no.getContext(), sVar.f9152d.getPackageName(), sVar);
        }
        boolean z2 = false;
        if (dq(sVar.dq) && no.kk().optInt("link_ad_click_event") == 1) {
            DownloadModel downloadModel = sVar.f9152d;
            if (downloadModel instanceof AdDownloadModel) {
                ((AdDownloadModel) downloadModel).setFunnelType(4);
            }
            com.ss.android.downloadlib.p.dq.dq().dq(sVar.dq, 0);
            z = true;
        } else {
            z = false;
        }
        int type = dq3.getType();
        if (type == 1) {
            d("by_url", dq2, sVar);
        } else {
            if (type != 3) {
                if (type != 4) {
                    com.ss.android.downloadlib.s.ox.dq().d("AppLinkClick default");
                } else {
                    dq("by_package", dq3, dq2, sVar);
                }
                if (z2 && !z && ((com.ss.android.downloadlib.p.ox.dq().d() && !com.ss.android.downloadlib.p.ox.dq().d(sVar.dq, sVar.f9152d.getLogExtra())) || com.ss.android.downloadlib.p.ox.dq().ox())) {
                    com.ss.android.downloadlib.p.dq.dq().dq(sVar.dq, 2);
                }
                return z2;
            }
            dq("by_package", dq2, sVar);
        }
        z2 = true;
        if (z2) {
            com.ss.android.downloadlib.p.dq.dq().dq(sVar.dq, 2);
        }
        return z2;
    }

    public static boolean dq(com.ss.android.downloadlib.addownload.d.s sVar, int i) {
        JSONObject jSONObject = new JSONObject();
        mp.dq(jSONObject, "download_scene", Integer.valueOf(sVar.r()));
        com.ss.android.downloadlib.p.dq.dq().d("market_click_open", jSONObject, sVar);
        com.ss.android.downloadlib.addownload.d.mn dq2 = com.ss.android.downloadlib.mn.kk.dq(no.getContext(), sVar, sVar.f9152d.getPackageName());
        String dq3 = mp.dq(dq2.d(), "open_market");
        int type = dq2.getType();
        if (type == 5) {
            dq(dq3, jSONObject, sVar, true);
        } else {
            if (type == 6) {
                mp.dq(jSONObject, "error_code", Integer.valueOf(dq2.dq()));
                mp.dq(jSONObject, "download_scene", Integer.valueOf(sVar.r()));
                com.ss.android.downloadlib.p.dq.dq().d("market_open_failed", jSONObject, sVar);
                return false;
            }
            if (type != 7) {
                return false;
            }
        }
        com.ss.android.downloadlib.p.dq.dq().dq(sVar.dq, i);
        return true;
    }

    public static boolean dq(String str, com.ss.android.downloadad.api.dq.d dVar) {
        if (!com.ss.android.downloadlib.addownload.kk.d(dVar.ob())) {
            return false;
        }
        if (TextUtils.isEmpty(dVar.iw()) && TextUtils.isEmpty(str)) {
            return false;
        }
        com.ss.android.socialbase.downloader.notification.d.dq().iw(dVar.gh());
        JSONObject jSONObject = new JSONObject();
        com.ss.android.downloadlib.mn.iw.dq(jSONObject, dVar);
        mp.dq(jSONObject, "applink_source", "auto_click");
        com.ss.android.downloadlib.p.dq.dq().d("applink_click", dVar);
        com.ss.android.downloadlib.addownload.d.mn dq2 = com.ss.android.downloadlib.mn.kk.dq(dVar, dVar.iw(), dVar.s());
        int type = dq2.getType();
        if (type == 1) {
            d("auto_by_url", jSONObject, dVar);
            return true;
        }
        if (type == 2) {
            d("auto_by_url", dq2, jSONObject, dVar);
            return false;
        }
        if (type == 3) {
            dq("auto_by_package", jSONObject, dVar);
            return true;
        }
        if (type != 4) {
            return false;
        }
        dq("auto_by_package", dq2, jSONObject, dVar);
        return false;
    }
}
