package com.bykv.vk.openvk.component.video.dq.d.s;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.component.video.dq.d.kk;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes.dex */
public abstract class dq {

    /* renamed from: d, reason: collision with root package name */
    s f554d;
    List<kk.d> dq;

    public abstract boolean d();

    public abstract int dq();

    public kk.d dq(String str) {
        List<kk.d> list;
        if (str != null && (list = this.dq) != null && list.size() > 0) {
            for (kk.d dVar : this.dq) {
                if (str.equals(dVar.dq)) {
                    return dVar;
                }
            }
        }
        return null;
    }

    public String dq(int i) {
        switch (i) {
            case 200:
                return "OK";
            case MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SHORT_SEEK /* 201 */:
                return "Created";
            case 202:
                return "Accepted";
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CHECK_INFO /* 203 */:
                return "Non-Authoritative";
            case MediaPlayer.MEDIA_PLAYER_OPTION_HIJACK_CODE /* 204 */:
                return "No Content";
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_ID /* 205 */:
                return "Reset Content";
            case MediaPlayer.MEDIA_PLAYER_OPTION_DRM_TYPE /* 206 */:
                return "Partial Content";
            default:
                switch (i) {
                    case TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX /* 300 */:
                        return "Multiple Choices";
                    case MediaPlayer.MEDIA_PLAYER_OPTION_NOTIFY_DEAD_LOCK /* 301 */:
                        return "Moved Permanently";
                    case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_AUDIO_EFFECT /* 302 */:
                        return "Temporary Redirect";
                    case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_PREGAIN /* 303 */:
                        return "See Other";
                    case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_THRESHOLD /* 304 */:
                        return "Not Modified";
                    case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_RATIO /* 305 */:
                        return "Use Proxy";
                    default:
                        switch (i) {
                            case MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL /* 400 */:
                                return "Bad Request";
                            case 401:
                                return "Unauthorized";
                            case 402:
                                return "Payment Required";
                            case 403:
                                return "Forbidden";
                            case TTAdConstant.SDK_NOT_SUPPORT_LIVE_MATE_CODE /* 404 */:
                                return "Not Found";
                            case TTAdConstant.LANDING_PAGE_TYPE_CODE /* 405 */:
                                return "Method Not Allowed";
                            case TTAdConstant.DOWNLOAD_APP_INFO_CODE /* 406 */:
                                return "Not Acceptable";
                            case TTAdConstant.DOWNLOAD_URL_CODE /* 407 */:
                                return "Proxy Authentication Required";
                            case TTAdConstant.INTERACTION_TYPE_CODE /* 408 */:
                                return "Request Time-Out";
                            case TTAdConstant.IMAGE_LIST_CODE /* 409 */:
                                return "Conflict";
                            case TTAdConstant.IMAGE_LIST_SIZE_CODE /* 410 */:
                                return "Gone";
                            case TTAdConstant.IMAGE_CODE /* 411 */:
                                return "Length Required";
                            case TTAdConstant.IMAGE_URL_CODE /* 412 */:
                                return "Precondition Failed";
                            case TTAdConstant.VIDEO_INFO_CODE /* 413 */:
                                return "Request Entity Too Large";
                            case TTAdConstant.VIDEO_URL_CODE /* 414 */:
                                return "Request-URI Too Large";
                            case TTAdConstant.VIDEO_COVER_URL_CODE /* 415 */:
                                return "Unsupported Media Type";
                            default:
                                switch (i) {
                                    case 500:
                                        return "Internal Server Error";
                                    case MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_PROTOCOL_HANDLE /* 501 */:
                                        return "Not Implemented";
                                    case 502:
                                        return "Bad Gateway";
                                    case 503:
                                        return "Service Unavailable";
                                    case 504:
                                        return "Gateway Timeout";
                                    case 505:
                                        return "HTTP Version Not Supported";
                                    default:
                                        return "";
                                }
                        }
                }
        }
    }

    public abstract String dq(String str, String str2);

    public abstract String iw();

    public s mn() {
        return this.f554d;
    }

    public abstract List<kk.d> ox();

    public abstract InputStream p();

    public abstract String s();
}
