package com.ss.android.socialbase.appdownloader.dq;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class kk extends dq {
    private String p;
    private String s;

    public kk(Context context, com.ss.android.socialbase.downloader.mn.dq dqVar, String str, String str2, String str3) {
        super(context, dqVar, str);
        this.p = str2;
        this.s = str3;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00a4  */
    @Override // com.ss.android.socialbase.appdownloader.dq.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Intent d() {
        String str;
        String ox = this.f9273d.ox("s");
        String dq = com.ss.android.socialbase.appdownloader.iw.ox.dq(this.f9273d.ox("ak"), ox);
        String dq2 = com.ss.android.socialbase.appdownloader.iw.ox.dq(this.f9273d.ox("am"), ox);
        String dq3 = com.ss.android.socialbase.appdownloader.iw.ox.dq(this.f9273d.ox("an"), ox);
        String str2 = null;
        if (!TextUtils.isEmpty(dq3) && dq3.split(",").length == 2) {
            String[] split = dq3.split(",");
            String dq4 = com.ss.android.socialbase.appdownloader.iw.ox.dq(this.f9273d.ox("al"), ox);
            String dq5 = com.ss.android.socialbase.appdownloader.iw.ox.dq(this.f9273d.ox(LiveConfigKey.AUDIO), ox);
            if (!TextUtils.isEmpty(dq5) && dq5.split(",").length == 2) {
                String[] split2 = dq5.split(",");
                JSONObject p = this.f9273d.p("download_dir");
                if (p != null) {
                    String optString = p.optString("dir_name");
                    if (!TextUtils.isEmpty(optString) && optString.contains("%s")) {
                        try {
                            str = String.format(optString, this.s);
                        } catch (Throwable unused) {
                        }
                        str2 = str;
                        if (str2.length() > 255) {
                            str2 = dq4.substring(str2.length() - MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                        }
                    }
                    str = this.s;
                    str2 = str;
                    if (str2.length() > 255) {
                    }
                }
                Intent intent = new Intent(dq);
                intent.putExtra(split2[0], split2[1]);
                intent.putExtra(dq2, this.p);
                intent.putExtra(dq4, str2);
                intent.putExtra(split[0], Integer.parseInt(split[1]));
                intent.addFlags(268468224);
                return intent;
            }
        }
        return null;
    }
}
