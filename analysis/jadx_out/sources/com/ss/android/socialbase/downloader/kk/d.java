package com.ss.android.socialbase.downloader.kk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class d {
    public static String dq(int i) {
        if (i == 449) {
            return "Retry With";
        }
        if (i == 451) {
            return "Unavailable For Legal Reasons";
        }
        if (i == 600) {
            return "Unparseable Response Headers";
        }
        if (i == 509) {
            return "Bandwidth Limit Exceeded";
        }
        if (i == 510) {
            return "Not Extended";
        }
        switch (i) {
            case 100:
                return "Continue";
            case 101:
                return "Switching Protocols";
            case 102:
                return "Processing";
            default:
                switch (i) {
                    case 200:
                        return "OK";
                    case MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SHORT_SEEK /* 201 */:
                        return "Created";
                    case 202:
                        return "Accepted";
                    case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CHECK_INFO /* 203 */:
                        return "Non-Authoritative Information";
                    case MediaPlayer.MEDIA_PLAYER_OPTION_HIJACK_CODE /* 204 */:
                        return "No Content";
                    case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_ID /* 205 */:
                        return "Reset Content";
                    case MediaPlayer.MEDIA_PLAYER_OPTION_DRM_TYPE /* 206 */:
                        return "Partial Content";
                    case MediaPlayer.MEDIA_PLAYER_OPTION_TOKEN_URL_TEMPLATE /* 207 */:
                        return "Multi-Status";
                    default:
                        switch (i) {
                            case TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX /* 300 */:
                                return "Multiple Choices";
                            case MediaPlayer.MEDIA_PLAYER_OPTION_NOTIFY_DEAD_LOCK /* 301 */:
                                return "Moved Permanently";
                            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_AUDIO_EFFECT /* 302 */:
                                return "Move Temporarily";
                            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_PREGAIN /* 303 */:
                                return "See Other";
                            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_THRESHOLD /* 304 */:
                                return "Not Modified";
                            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_RATIO /* 305 */:
                                return "Use Proxy";
                            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_PREDELAY /* 306 */:
                                return "Switch Proxy";
                            case MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_PREPARED_TIME /* 307 */:
                                return "Temporary Redirect";
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
                                        return "Request Timeout";
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
                                        return "Request-URI Too Long";
                                    case TTAdConstant.VIDEO_COVER_URL_CODE /* 415 */:
                                        return "Unsupported Media Type";
                                    case TTAdConstant.LIVE_AD_CODE /* 416 */:
                                        return "Requested Range Not Satisfiable";
                                    case TTAdConstant.LIVE_FEED_URL_CODE /* 417 */:
                                        return "Expectation Failed";
                                    case TTAdConstant.DEEPLINK_FALL_BACK_CODE /* 418 */:
                                        return "I'm a teapot";
                                    default:
                                        switch (i) {
                                            case 421:
                                                return "Too Many Connections";
                                            case 422:
                                                return "Unprocessable Entity";
                                            case 423:
                                                return "Locked";
                                            case 424:
                                                return "Failed Dependency";
                                            case 425:
                                                return "Unordered Collection";
                                            case 426:
                                                return "Upgrade Required";
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
                                                    case 506:
                                                        return "Variant Also Negotiates";
                                                    case 507:
                                                        return "Insufficient Storage";
                                                    default:
                                                        return "";
                                                }
                                        }
                                }
                        }
                }
        }
    }
}
