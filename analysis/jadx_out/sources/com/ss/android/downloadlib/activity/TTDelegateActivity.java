package com.ss.android.downloadlib.activity;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.ss.android.download.api.config.r;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.download.api.model.d;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.downloadad.api.dq.d;
import com.ss.android.downloadlib.addownload.d.iw;
import com.ss.android.downloadlib.addownload.dq.s;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.addownload.q;
import com.ss.android.downloadlib.guide.install.dq;
import com.ss.android.downloadlib.mn.ia;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.downloadlib.mn.o;
import com.ss.android.downloadlib.s.ox;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.aaz;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class TTDelegateActivity extends Activity implements aaz {
    private static dq p;

    /* renamed from: d, reason: collision with root package name */
    private boolean f9123d;
    protected Intent dq = null;
    private d ox;

    private void d() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        window.setAttributes(attributes);
    }

    private void d(long j) {
        final d p2 = iw.dq().p(j);
        if (p2 == null) {
            ox.dq().dq("showOpenAppDialogInner nativeModel null");
            com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
        } else {
            no.ox().d(new d.dq(this).dq("已安装完成").d(String.format("%1$s已安装完成，是否立即打开？", TextUtils.isEmpty(p2.vf()) ? "刚刚下载的应用" : p2.vf())).ox("打开").p("取消").dq(false).dq(mp.p(this, p2.s())).dq(new d.InterfaceC0211d() { // from class: com.ss.android.downloadlib.activity.TTDelegateActivity.2
                @Override // com.ss.android.download.api.model.d.InterfaceC0211d
                public void d(DialogInterface dialogInterface) {
                    com.ss.android.downloadlib.p.dq.dq().d("market_openapp_cancel", p2);
                    TTDelegateActivity tTDelegateActivity = TTDelegateActivity.this;
                    if (tTDelegateActivity != null && !tTDelegateActivity.isFinishing()) {
                        dialogInterface.dismiss();
                    }
                    com.ss.android.socialbase.appdownloader.ox.dq((Activity) TTDelegateActivity.this);
                }

                @Override // com.ss.android.download.api.model.d.InterfaceC0211d
                public void dq(DialogInterface dialogInterface) {
                    com.ss.android.downloadlib.d.dq.d(p2);
                    TTDelegateActivity tTDelegateActivity = TTDelegateActivity.this;
                    if (tTDelegateActivity != null && !tTDelegateActivity.isFinishing()) {
                        dialogInterface.dismiss();
                    }
                    com.ss.android.socialbase.appdownloader.ox.dq((Activity) TTDelegateActivity.this);
                }

                @Override // com.ss.android.download.api.model.d.InterfaceC0211d
                public void ox(DialogInterface dialogInterface) {
                    com.ss.android.socialbase.appdownloader.ox.dq((Activity) TTDelegateActivity.this);
                }
            }).dq(2).dq());
            com.ss.android.downloadlib.p.dq.dq().d("market_openapp_window_show", p2);
        }
    }

    public static void d(com.ss.android.downloadad.api.dq.dq dqVar) {
        dq(dqVar, 5, "", "", "", "");
    }

    public static void d(com.ss.android.downloadad.api.dq.dq dqVar, String str, String str2, String str3) {
        dq(dqVar, 7, str, str2, str3, "");
    }

    public static void d(com.ss.android.downloadad.api.dq.dq dqVar, String str, String str2, String str3, String str4) {
        dq(dqVar, 20, str, str2, str3, str4);
    }

    private void d(String str) {
        Intent mn = mp.mn(this, str);
        if (mn == null) {
            return;
        }
        try {
            mn.addFlags(C.ENCODING_PCM_MU_LAW);
            mn.putExtra("start_only_for_android", true);
            startActivity(mn);
        } catch (Exception e2) {
            e2.printStackTrace();
        } finally {
            com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
        }
    }

    public static void d(String str, long j, String str2) {
        Intent intent = new Intent(no.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 14);
        intent.putExtra("package_name", str);
        intent.putExtra("model_id", j);
        intent.putExtra("market_app_id", str2);
        if (no.getContext() != null) {
            no.getContext().startActivity(intent);
        }
    }

    public static void d(String str, com.ss.android.downloadad.api.dq.dq dqVar) {
        Intent ox = ox(dqVar);
        ox.addFlags(C.ENCODING_PCM_MU_LAW);
        ox.putExtra("type", 11);
        ox.putExtra("package_name", str);
        if (no.getContext() != null) {
            no.getContext().startActivity(ox);
        }
    }

    private void d(final String str, String[] strArr) {
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
            com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
            return;
        }
        r rVar = new r() { // from class: com.ss.android.downloadlib.activity.TTDelegateActivity.1
            private WeakReference<Activity> ox;

            {
                this.ox = new WeakReference<>(TTDelegateActivity.this);
            }

            @Override // com.ss.android.download.api.config.r
            public void dq() {
                o.dq(str);
                com.ss.android.socialbase.appdownloader.ox.dq(this.ox.get());
            }

            @Override // com.ss.android.download.api.config.r
            public void dq(String str2) {
                o.dq(str, str2);
                com.ss.android.socialbase.appdownloader.ox.dq(this.ox.get());
            }
        };
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                no.s().dq(this, strArr, rVar);
                return;
            } catch (Exception e2) {
                no.r().dq(e2, "requestPermission");
            }
        }
        rVar.dq();
    }

    public static void dq(long j) {
        Intent intent = new Intent(no.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 10);
        intent.putExtra("app_info_id", j);
        if (no.getContext() != null) {
            no.getContext().startActivity(intent);
        }
    }

    private void dq(long j, String str) {
        if (q.dq() == null) {
            return;
        }
        com.ss.android.downloadad.api.dq.d p2 = iw.dq().p(j);
        if (p2 != null) {
            DownloadInfo downloadInfo = Downloader.getInstance(no.getContext()).getDownloadInfo(p2.gh());
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("time_after_click", Long.valueOf(System.currentTimeMillis() - p2.uh()));
                jSONObject.putOpt("click_download_size", Long.valueOf(p2.xz()));
                if (downloadInfo != null) {
                    jSONObject.putOpt("download_length", Long.valueOf(downloadInfo.getCurBytes()));
                    jSONObject.putOpt("download_percent", Long.valueOf(downloadInfo.getCurBytes() / downloadInfo.getTotalBytes()));
                    jSONObject.putOpt("download_apk_size", Long.valueOf(downloadInfo.getTotalBytes()));
                    jSONObject.putOpt("download_current_bytes", Integer.valueOf((int) (downloadInfo.getCurBytes() / BaseConstants.MB_VALUE)));
                    jSONObject.putOpt("download_total_bytes", Integer.valueOf((int) (downloadInfo.getTotalBytes() / BaseConstants.MB_VALUE)));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (TextUtils.isEmpty(str)) {
                com.ss.android.downloadlib.p.dq.dq().d("pause_reserve_wifi_dialog_show", jSONObject, p2);
            } else {
                com.ss.android.downloadlib.p.dq.dq().dq("cancel_pause_reserve_wifi_dialog_show", jSONObject, p2);
            }
        }
        s.dq dq = new s.dq(this).dq(false).dq(q.dq());
        if (!TextUtils.isEmpty(str)) {
            dq.p(str).dq(q.d());
        }
        dq.dq().show();
        this.f9123d = true;
        this.ox = p2;
    }

    public static void dq(Context context, String str, long j) {
        Intent intent = new Intent(context, (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 16);
        intent.putExtra("package_name", str);
        intent.putExtra("model_id", j);
        if (context != null) {
            context.startActivity(intent);
        }
    }

    public static void dq(com.ss.android.downloadad.api.dq.dq dqVar) {
        Intent ox = ox(dqVar);
        ox.addFlags(C.ENCODING_PCM_MU_LAW);
        ox.putExtra("type", 4);
        ox.putExtra("model_id", dqVar.d());
        if (no.getContext() != null) {
            no.getContext().startActivity(ox);
        }
    }

    private static void dq(com.ss.android.downloadad.api.dq.dq dqVar, int i, String str, String str2, String str3, String str4) {
        Intent ox = ox(dqVar);
        ox.addFlags(C.ENCODING_PCM_MU_LAW);
        ox.putExtra("type", i);
        if (!TextUtils.isEmpty(str2)) {
            ox.putExtra("positive_button_text", str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            ox.putExtra("negative_button_text", str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            ox.putExtra("delete_button_text", str4);
        }
        if (!TextUtils.isEmpty(str)) {
            ox.putExtra("message_text", str);
        }
        ox.putExtra("model_id", dqVar.d());
        if (no.getContext() != null) {
            no.getContext().startActivity(ox);
        }
    }

    public static void dq(com.ss.android.downloadad.api.dq.dq dqVar, dq dqVar2) {
        Intent ox = ox(dqVar);
        ox.addFlags(C.ENCODING_PCM_MU_LAW);
        ox.putExtra("type", 9);
        p = dqVar2;
        if (no.getContext() != null) {
            no.getContext().startActivity(ox);
        }
    }

    public static void dq(com.ss.android.downloadad.api.dq.dq dqVar, String str) {
        dq(dqVar, 19, "", "", "", str);
    }

    public static void dq(com.ss.android.downloadad.api.dq.dq dqVar, String str, String str2, String str3) {
        dq(dqVar, 8, str, str2, str3, "");
    }

    public static void dq(com.ss.android.downloadad.api.dq.dq dqVar, String str, String str2, String str3, String str4) {
        dq(dqVar, 21, str, str2, str3, str4);
    }

    private void dq(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
                return;
            }
            try {
                Uri parse = Uri.parse(str);
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(parse);
                intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str);
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                if (com.ss.android.socialbase.downloader.mn.dq.ox().dq("fix_app_link_flag")) {
                    intent.addFlags(TTAdConstant.KEY_CLICK_AREA);
                }
                intent.putExtra("start_only_for_android", true);
                startActivity(intent);
                com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
            } catch (Exception e2) {
                e2.printStackTrace();
                com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
            }
        } catch (Throwable th) {
            com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
            throw th;
        }
    }

    public static void dq(String str, long j) {
        Intent intent = new Intent(no.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 15);
        intent.putExtra("package_name", str);
        intent.putExtra("model_id", j);
        if (no.getContext() != null) {
            no.getContext().startActivity(intent);
        }
    }

    public static void dq(String str, long j, String str2) {
        Intent intent = new Intent(no.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 13);
        intent.putExtra("package_name", str);
        intent.putExtra("model_id", j);
        intent.putExtra("need_comment", str2);
        if (no.getContext() != null) {
            no.getContext().startActivity(intent);
        }
    }

    public static void dq(String str, long j, String str2, JSONObject jSONObject) {
        Intent intent = new Intent(no.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 12);
        intent.putExtra("package_name", str);
        intent.putExtra("model_id", j);
        intent.putExtra("param", str2);
        intent.putExtra("ext_json", jSONObject.toString());
        if (no.getContext() != null) {
            no.getContext().startActivity(intent);
        }
    }

    public static void dq(String str, com.ss.android.downloadad.api.dq.dq dqVar) {
        Intent ox = ox(dqVar);
        ox.addFlags(C.ENCODING_PCM_MU_LAW);
        ox.putExtra("type", 2);
        ox.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str);
        if (no.getContext() != null) {
            no.getContext().startActivity(ox);
        }
    }

    public static void dq(String str, String[] strArr) {
        Intent intent = new Intent(no.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 1);
        intent.putExtra("permission_id_key", str);
        intent.putExtra("permission_content_key", strArr);
        if (no.getContext() != null) {
            no.getContext().startActivity(intent);
        }
    }

    private static Intent ox(com.ss.android.downloadad.api.dq.dq dqVar) {
        return new Intent(no.getContext(), (Class<?>) TTDelegateActivity.class);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void ox() {
        String str;
        int i;
        int i2;
        int i3;
        CharSequence charSequence;
        long longExtra = this.dq.getLongExtra("model_id", 0L);
        String stringExtra = this.dq.getStringExtra("message_text");
        String stringExtra2 = this.dq.getStringExtra("positive_button_text");
        String stringExtra3 = this.dq.getStringExtra("negative_button_text");
        String stringExtra4 = this.dq.getStringExtra("delete_button_text");
        int intExtra = this.dq.getIntExtra("type", 0);
        com.ss.android.downloadad.api.dq.d p2 = iw.dq().p(longExtra);
        if (p2 != null) {
            DownloadInfo dq = !TextUtils.isEmpty(p2.ws()) ? com.ss.android.downloadlib.o.dq(no.getContext()).dq(p2.ws(), null, true) : com.ss.android.downloadlib.o.dq(no.getContext()).d(p2.dq());
            if (dq != null) {
                long curBytes = dq.getCurBytes();
                long totalBytes = dq.getTotalBytes();
                if (curBytes > 0 && totalBytes > 0) {
                    i2 = (int) (curBytes / BaseConstants.MB_VALUE);
                    str = stringExtra3;
                    i3 = (int) (totalBytes / BaseConstants.MB_VALUE);
                    i = com.ss.android.downloadlib.addownload.o.dq(dq.getId(), (int) ((curBytes * 100) / totalBytes));
                    s.dq ox = new s.dq(this).dq(false).dq(stringExtra).d(stringExtra2).ox(str);
                    if (intExtra != 7) {
                        if (com.ss.android.downloadlib.addownload.p.iw.dq() == null) {
                            return;
                        }
                        ox.dq(com.ss.android.downloadlib.addownload.p.iw.dq());
                        ox.dq().show();
                        charSequence = "download_percent";
                    } else if (intExtra == 8) {
                        if (com.ss.android.downloadlib.addownload.p.dq.dq() == null) {
                            return;
                        }
                        ox.dq(com.ss.android.downloadlib.addownload.p.dq.dq());
                        ox.dq().show();
                        charSequence = "apk_size";
                    } else if (intExtra == 20) {
                        if (com.ss.android.downloadlib.addownload.p.ox.dq() == null || com.ss.android.downloadlib.addownload.p.ox.d() == null) {
                            return;
                        }
                        ox.dq(com.ss.android.downloadlib.addownload.p.ox.dq()).p(stringExtra4).dq(com.ss.android.downloadlib.addownload.p.ox.d());
                        ox.dq().show();
                        charSequence = "download_percent_cancel";
                    } else if (intExtra != 21) {
                        charSequence = "";
                    } else {
                        if (com.ss.android.downloadlib.addownload.p.d.dq() == null || com.ss.android.downloadlib.addownload.p.d.d() == null) {
                            return;
                        }
                        ox.dq(com.ss.android.downloadlib.addownload.p.d.dq()).p(stringExtra4).dq(com.ss.android.downloadlib.addownload.p.d.d());
                        ox.dq().show();
                        charSequence = "apk_size_cancel";
                    }
                    if (TextUtils.isEmpty(charSequence)) {
                        this.f9123d = true;
                        this.ox = p2;
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.putOpt("pause_optimise_type", charSequence);
                            jSONObject.putOpt("pause_optimise_action", "show_dialog");
                            jSONObject.putOpt("download_percent", Integer.valueOf(i));
                            jSONObject.putOpt("download_current_bytes", Integer.valueOf(i2));
                            jSONObject.putOpt("download_total_bytes", Integer.valueOf(i3));
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                        }
                        if (TextUtils.equals(charSequence, "download_percent") || TextUtils.equals(charSequence, "apk_size")) {
                            com.ss.android.downloadlib.p.dq.dq().dq("pause_optimise", jSONObject, p2);
                            return;
                        } else {
                            if (TextUtils.equals(charSequence, "download_percent_cancel") || TextUtils.equals(charSequence, "apk_size_cancel")) {
                                com.ss.android.downloadlib.p.dq.dq().dq("pause_cancel_optimise", jSONObject, p2);
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
            }
        }
        str = stringExtra3;
        i = -1;
        i2 = 0;
        i3 = 0;
        s.dq ox2 = new s.dq(this).dq(false).dq(stringExtra).d(stringExtra2).ox(str);
        if (intExtra != 7) {
        }
        if (TextUtils.isEmpty(charSequence)) {
        }
    }

    private void ox(long j) {
        new com.ss.android.downloadlib.addownload.compliance.dq(this, j).show();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void dq() {
        TTDelegateActivity tTDelegateActivity;
        Intent intent = this.dq;
        if (intent != null) {
            switch (intent.getIntExtra("type", 0)) {
                case 1:
                    tTDelegateActivity = this;
                    d(tTDelegateActivity.dq.getStringExtra("permission_id_key"), tTDelegateActivity.dq.getStringArrayExtra("permission_content_key"));
                    break;
                case 2:
                    tTDelegateActivity = this;
                    dq(tTDelegateActivity.dq.getStringExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL));
                    break;
                case 3:
                case 6:
                case 17:
                case 18:
                default:
                    tTDelegateActivity = this;
                    com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
                    break;
                case 4:
                    tTDelegateActivity = this;
                    d(tTDelegateActivity.dq.getLongExtra("model_id", 0L));
                    break;
                case 5:
                    tTDelegateActivity = this;
                    dq(tTDelegateActivity.dq.getLongExtra("model_id", 0L), "");
                    break;
                case 7:
                case 8:
                case 20:
                case 21:
                    tTDelegateActivity = this;
                    ox();
                    break;
                case 9:
                    tTDelegateActivity = this;
                    dq dqVar = p;
                    if (dqVar != null) {
                        dqVar.dq();
                    }
                    com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
                    break;
                case 10:
                    tTDelegateActivity = this;
                    ox(tTDelegateActivity.dq.getLongExtra("app_info_id", 0L));
                    break;
                case 11:
                    tTDelegateActivity = this;
                    d(tTDelegateActivity.dq.getStringExtra("package_name"));
                    break;
                case 12:
                    tTDelegateActivity = this;
                    ia.dq(tTDelegateActivity, this.dq.getStringExtra("package_name"), this.dq.getLongExtra("model_id", 0L), this.dq.getStringExtra("param"), this.dq.getStringExtra("ext_json"));
                    com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
                    break;
                case 13:
                    ia.dq(this, this.dq.getStringExtra("package_name"), this.dq.getLongExtra("model_id", 0L), this.dq.getStringExtra("need_comment"));
                    tTDelegateActivity = this;
                    com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
                    break;
                case 14:
                    ia.d(this, this.dq.getStringExtra("package_name"), this.dq.getLongExtra("model_id", 0L), this.dq.getStringExtra("market_app_id"));
                    tTDelegateActivity = this;
                    com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
                    break;
                case 15:
                    ia.dq(this, this.dq.getStringExtra("package_name"), this.dq.getLongExtra("model_id", 0L));
                    tTDelegateActivity = this;
                    com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
                    break;
                case 16:
                    ia.d(this, this.dq.getStringExtra("package_name"), this.dq.getLongExtra("model_id", 0L));
                    tTDelegateActivity = this;
                    com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
                    break;
                case 19:
                    dq(this.dq.getLongExtra("model_id", 0L), this.dq.getStringExtra("delete_button_text"));
                    tTDelegateActivity = this;
                    break;
            }
            tTDelegateActivity.dq = null;
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        d();
        this.dq = getIntent();
        no.d(this);
        dq();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        this.dq = intent;
        no.d(this);
        dq();
    }

    @Override // android.app.Activity, g.aaz
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        no.s().dq(this, i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onStop() {
        com.ss.android.downloadad.api.dq.d dVar;
        super.onStop();
        if (!this.f9123d || (dVar = this.ox) == null) {
            return;
        }
        DownloadInfo dq = !TextUtils.isEmpty(dVar.ws()) ? com.ss.android.downloadlib.o.dq(no.getContext()).dq(this.ox.ws(), null, true) : com.ss.android.downloadlib.o.dq(no.getContext()).d(this.ox.dq());
        if (dq == null || dq.getCurBytes() < dq.getTotalBytes() || isFinishing()) {
            return;
        }
        finish();
    }
}
