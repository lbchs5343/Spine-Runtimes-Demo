package ms.bz.bd.c.Pgl;

import android.net.DhcpInfo;
import android.net.wifi.WifiManager;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import ms.bz.bd.c.Pgl.pblb;
import org.json.JSONArray;

/* loaded from: classes.dex */
final class k extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        JSONArray jSONArray = new JSONArray();
        try {
            DhcpInfo dhcpInfo = ((WifiManager) pgla.f21199a.f21200b.getApplicationContext().getSystemService((String) pblk.a(16777217, 0, 0L, "a3f93c", new byte[]{103, 56, 19, 68}))).getDhcpInfo();
            StringBuilder sb = new StringBuilder();
            sb.append(dhcpInfo.dns1 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            sb.append((String) pblk.a(16777217, 0, 0L, "81a0e3", new byte[]{103}));
            sb.append((dhcpInfo.dns1 >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            sb.append((String) pblk.a(16777217, 0, 0L, "b53492", new byte[]{61}));
            sb.append((dhcpInfo.dns1 >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            sb.append((String) pblk.a(16777217, 0, 0L, "eac60e", new byte[]{58}));
            sb.append((dhcpInfo.dns1 >> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            jSONArray.put(sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(dhcpInfo.dns2 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            sb2.append((String) pblk.a(16777217, 0, 0L, "d3d861", new byte[]{59}));
            sb2.append((dhcpInfo.dns2 >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            sb2.append((String) pblk.a(16777217, 0, 0L, "29a5ec", new byte[]{109}));
            sb2.append((dhcpInfo.dns2 >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            sb2.append((String) pblk.a(16777217, 0, 0L, "ef98ad", new byte[]{58}));
            sb2.append((dhcpInfo.dns2 >> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            jSONArray.put(sb2.toString());
        } catch (Throwable unused) {
            pblk.a(16777217, 0, 0L, "df3609", new byte[]{120, 109, 72, 125, 11, 34});
        }
        return jSONArray.toString();
    }
}
