import Foundation

@objc
public enum GridiconType: Int {
    case visible
    case video
    case videoCamera
    case user
    case userCircle
    case undo
    case underline
    case types
    case trophy
    case trash
    case time
    case thumbsUp
    case themes
    case textColor
    case tag
    case tablet
    case sync
    case strikethrough
    case status
    case stats
    case statsAlt
    case star
    case starOutline
    case specialCharacter
    case speaker
    case spam
    case signOut
    case share
    case shareIOS
    case search
    case scheduled
    case rotate
    case reply
    case refresh
    case redo
    case reblog
    case readerFollowing
    case readerFollow
    case reader
    case quote
    case print
    case posts
    case popout
    case plus
    case plusSmall
    case plugins
    case phone
    case pencil
    case pages
    case notice
    case noticeOutline
    case notVisible
    case mySites
    case mySitesHorizon
    case minus
    case minusSmall
    case microphone
    case menus
    case menu
    case mention
    case mail
    case lock
    case location
    case listUnordered
    case listOrdered
    case listCheckmark
    case link
    case linkBreak
    case layout
    case layoutBlocks
    case italic
    case institution
    case ink
    case info
    case infoOutline
    case indentRight
    case indentLeft
    case image
    case imageMultiple
    case house
    case history
    case help
    case helpOutline
    case heart
    case heartOutline
    case heading
    case grid
    case globe
    case folder
    case folderMultiple
    case flipVertical
    case flipHorizontal
    case flag
    case external
    case ellipsis
    case dropdown
    case domains
    case customize
    case customPostType
    case cross
    case crossSmall
    case crop
    case creditCard
    case create
    case computer
    case comment
    case cog
    case code
    case cloud
    case cloudUpload
    case cloudOutline
    case cloudDownload
    case clipboard
    case clearFormatting
    case chevronUp
    case chevronRight
    case chevronLeft
    case chevronDown
    case checkmark
    case checkmarkCircle
    case cart
    case caption
    case camera
    case calendar
    case briefcase
    case bookmark
    case bookmarkOutline
    case book
    case bold
    case block
    case bell
    case audio
    case attachment
    case aside
    case arrowUp
    case arrowRight
    case arrowLeft
    case arrowDown
    case alignRight
    case alignLeft
    case alignJustify
    case alignImageRight
    case alignImageNone
    case alignImageLeft
    case alignImageCenter
    case alignCenter
    case add
    case addOutline
    case addImage
}

public final class Gridicon: NSObject {
    public static let defaultSize = CGSize(width: 24.0, height: 24.0)
    
    fileprivate static let resizingBehavior = GridiconsGenerated.ResizingBehavior.aspectFit

    fileprivate static let cache = NSCache<AnyObject, AnyObject>()
    static func clearCache() {
        cache.removeAllObjects()
    }
    
    /// - returns: A template image of the specified Gridicon type, at the default size.
    public static func iconOfType(_ type: GridiconType) -> UIImage {
        return iconOfType(type, withSize: defaultSize)
    }
    
    // These are two separate methods (rather than one method with a default argument) because Obj-C
    
    /// - returns: A template image of the specified Gridicon type, at the specified size.
    public static func iconOfType(_ type: GridiconType, withSize size: CGSize) -> UIImage {
        if let icon = cachedIconOfType(type, withSize: size) {
            return icon
        }
        
        let icon = generateIconOfType(type, withSize: size).withRenderingMode(.alwaysTemplate)
        cache.setObject(icon, forKey: "\(type.rawValue)-\(size.width)-\(size.height)" as AnyObject)
        
        return icon
    }
    
    fileprivate static func cachedIconOfType(_ type: GridiconType, withSize size: CGSize) -> UIImage? {
        return cache.object(forKey: "\(type.rawValue)-\(size.width)-\(size.height)" as AnyObject) as? UIImage
    }
    
    fileprivate static func generateIconOfType(_ type: GridiconType, withSize size: CGSize) -> UIImage {
        switch type {
        case .visible:
            return GridiconsGenerated.imageOfGridiconsvisible(size: size, resizing: resizingBehavior)
        case .video:
            return GridiconsGenerated.imageOfGridiconsvideo(size: size, resizing: resizingBehavior)
        case .videoCamera:
            return GridiconsGenerated.imageOfGridiconsvideocamera(size: size, resizing: resizingBehavior)
        case .user:
            return GridiconsGenerated.imageOfGridiconsuser(size: size, resizing: resizingBehavior)
        case .userCircle:
            return GridiconsGenerated.imageOfGridiconsusercircle(size: size, resizing: resizingBehavior)
        case .undo:
            return GridiconsGenerated.imageOfGridiconsundo(size: size, resizing: resizingBehavior)
        case .underline:
            return GridiconsGenerated.imageOfGridiconsunderline(size: size, resizing: resizingBehavior)
        case .types:
            return GridiconsGenerated.imageOfGridiconstypes(size: size, resizing: resizingBehavior)
        case .trophy:
            return GridiconsGenerated.imageOfGridiconstrophy(size: size, resizing: resizingBehavior)
        case .trash:
            return GridiconsGenerated.imageOfGridiconstrash(size: size, resizing: resizingBehavior)
        case .time:
            return GridiconsGenerated.imageOfGridiconstime(size: size, resizing: resizingBehavior)
        case .thumbsUp:
            return GridiconsGenerated.imageOfGridiconsthumbsup(size: size, resizing: resizingBehavior)
        case .themes:
            return GridiconsGenerated.imageOfGridiconsthemes(size: size, resizing: resizingBehavior)
        case .textColor:
            return GridiconsGenerated.imageOfGridiconstextcolor(size: size, resizing: resizingBehavior)
        case .tag:
            return GridiconsGenerated.imageOfGridiconstag(size: size, resizing: resizingBehavior)
        case .tablet:
            return GridiconsGenerated.imageOfGridiconstablet(size: size, resizing: resizingBehavior)
        case .sync:
            return GridiconsGenerated.imageOfGridiconssync(size: size, resizing: resizingBehavior)
        case .strikethrough:
            return GridiconsGenerated.imageOfGridiconsstrikethrough(size: size, resizing: resizingBehavior)
        case .status:
            return GridiconsGenerated.imageOfGridiconsstatus(size: size, resizing: resizingBehavior)
        case .stats:
            return GridiconsGenerated.imageOfGridiconsstats(size: size, resizing: resizingBehavior)
        case .statsAlt:
            return GridiconsGenerated.imageOfGridiconsstatsalt(size: size, resizing: resizingBehavior)
        case .star:
            return GridiconsGenerated.imageOfGridiconsstar(size: size, resizing: resizingBehavior)
        case .starOutline:
            return GridiconsGenerated.imageOfGridiconsstaroutline(size: size, resizing: resizingBehavior)
        case .specialCharacter:
            return GridiconsGenerated.imageOfGridiconsspecialcharacter(size: size, resizing: resizingBehavior)
        case .speaker:
            return GridiconsGenerated.imageOfGridiconsspeaker(size: size, resizing: resizingBehavior)
        case .spam:
            return GridiconsGenerated.imageOfGridiconsspam(size: size, resizing: resizingBehavior)
        case .signOut:
            return GridiconsGenerated.imageOfGridiconssignout(size: size, resizing: resizingBehavior)
        case .share:
            return GridiconsGenerated.imageOfGridiconsshare(size: size, resizing: resizingBehavior)
        case .shareIOS:
            return GridiconsGenerated.imageOfGridiconsshareios(size: size, resizing: resizingBehavior)
        case .search:
            return GridiconsGenerated.imageOfGridiconssearch(size: size, resizing: resizingBehavior)
        case .scheduled:
            return GridiconsGenerated.imageOfGridiconsscheduled(size: size, resizing: resizingBehavior)
        case .rotate:
            return GridiconsGenerated.imageOfGridiconsrotate(size: size, resizing: resizingBehavior)
        case .reply:
            return GridiconsGenerated.imageOfGridiconsreply(size: size, resizing: resizingBehavior)
        case .refresh:
            return GridiconsGenerated.imageOfGridiconsrefresh(size: size, resizing: resizingBehavior)
        case .redo:
            return GridiconsGenerated.imageOfGridiconsredo(size: size, resizing: resizingBehavior)
        case .reblog:
            return GridiconsGenerated.imageOfGridiconsreblog(size: size, resizing: resizingBehavior)
        case .readerFollowing:
            return GridiconsGenerated.imageOfGridiconsreaderfollowing(size: size, resizing: resizingBehavior)
        case .readerFollow:
            return GridiconsGenerated.imageOfGridiconsreaderfollow(size: size, resizing: resizingBehavior)
        case .reader:
            return GridiconsGenerated.imageOfGridiconsreader(size: size, resizing: resizingBehavior)
        case .quote:
            return GridiconsGenerated.imageOfGridiconsquote(size: size, resizing: resizingBehavior)
        case .print:
            return GridiconsGenerated.imageOfGridiconsprint(size: size, resizing: resizingBehavior)
        case .posts:
            return GridiconsGenerated.imageOfGridiconsposts(size: size, resizing: resizingBehavior)
        case .popout:
            return GridiconsGenerated.imageOfGridiconspopout(size: size, resizing: resizingBehavior)
        case .plus:
            return GridiconsGenerated.imageOfGridiconsplus(size: size, resizing: resizingBehavior)
        case .plusSmall:
            return GridiconsGenerated.imageOfGridiconsplussmall(size: size, resizing: resizingBehavior)
        case .plugins:
            return GridiconsGenerated.imageOfGridiconsplugins(size: size, resizing: resizingBehavior)
        case .phone:
            return GridiconsGenerated.imageOfGridiconsphone(size: size, resizing: resizingBehavior)
        case .pencil:
            return GridiconsGenerated.imageOfGridiconspencil(size: size, resizing: resizingBehavior)
        case .pages:
            return GridiconsGenerated.imageOfGridiconspages(size: size, resizing: resizingBehavior)
        case .notice:
            return GridiconsGenerated.imageOfGridiconsnotice(size: size, resizing: resizingBehavior)
        case .noticeOutline:
            return GridiconsGenerated.imageOfGridiconsnoticeoutline(size: size, resizing: resizingBehavior)
        case .notVisible:
            return GridiconsGenerated.imageOfGridiconsnotvisible(size: size, resizing: resizingBehavior)
        case .mySites:
            return GridiconsGenerated.imageOfGridiconsmysites(size: size, resizing: resizingBehavior)
        case .mySitesHorizon:
            return GridiconsGenerated.imageOfGridiconsmysiteshorizon(size: size, resizing: resizingBehavior)
        case .minus:
            return GridiconsGenerated.imageOfGridiconsminus(size: size, resizing: resizingBehavior)
        case .minusSmall:
            return GridiconsGenerated.imageOfGridiconsminussmall(size: size, resizing: resizingBehavior)
        case .microphone:
            return GridiconsGenerated.imageOfGridiconsmicrophone(size: size, resizing: resizingBehavior)
        case .menus:
            return GridiconsGenerated.imageOfGridiconsmenus(size: size, resizing: resizingBehavior)
        case .menu:
            return GridiconsGenerated.imageOfGridiconsmenu(size: size, resizing: resizingBehavior)
        case .mention:
            return GridiconsGenerated.imageOfGridiconsmention(size: size, resizing: resizingBehavior)
        case .mail:
            return GridiconsGenerated.imageOfGridiconsmail(size: size, resizing: resizingBehavior)
        case .lock:
            return GridiconsGenerated.imageOfGridiconslock(size: size, resizing: resizingBehavior)
        case .location:
            return GridiconsGenerated.imageOfGridiconslocation(size: size, resizing: resizingBehavior)
        case .listUnordered:
            return GridiconsGenerated.imageOfGridiconslistunordered(size: size, resizing: resizingBehavior)
        case .listOrdered:
            return GridiconsGenerated.imageOfGridiconslistordered(size: size, resizing: resizingBehavior)
        case .listCheckmark:
            return GridiconsGenerated.imageOfGridiconslistcheckmark(size: size, resizing: resizingBehavior)
        case .link:
            return GridiconsGenerated.imageOfGridiconslink(size: size, resizing: resizingBehavior)
        case .linkBreak:
            return GridiconsGenerated.imageOfGridiconslinkbreak(size: size, resizing: resizingBehavior)
        case .layout:
            return GridiconsGenerated.imageOfGridiconslayout(size: size, resizing: resizingBehavior)
        case .layoutBlocks:
            return GridiconsGenerated.imageOfGridiconslayoutblocks(size: size, resizing: resizingBehavior)
        case .italic:
            return GridiconsGenerated.imageOfGridiconsitalic(size: size, resizing: resizingBehavior)
        case .institution:
            return GridiconsGenerated.imageOfGridiconsinstitution(size: size, resizing: resizingBehavior)
        case .ink:
            return GridiconsGenerated.imageOfGridiconsink(size: size, resizing: resizingBehavior)
        case .info:
            return GridiconsGenerated.imageOfGridiconsinfo(size: size, resizing: resizingBehavior)
        case .infoOutline:
            return GridiconsGenerated.imageOfGridiconsinfooutline(size: size, resizing: resizingBehavior)
        case .indentRight:
            return GridiconsGenerated.imageOfGridiconsindentright(size: size, resizing: resizingBehavior)
        case .indentLeft:
            return GridiconsGenerated.imageOfGridiconsindentleft(size: size, resizing: resizingBehavior)
        case .image:
            return GridiconsGenerated.imageOfGridiconsimage(size: size, resizing: resizingBehavior)
        case .imageMultiple:
            return GridiconsGenerated.imageOfGridiconsimagemultiple(size: size, resizing: resizingBehavior)
        case .house:
            return GridiconsGenerated.imageOfGridiconshouse(size: size, resizing: resizingBehavior)
        case .history:
            return GridiconsGenerated.imageOfGridiconshistory(size: size, resizing: resizingBehavior)
        case .help:
            return GridiconsGenerated.imageOfGridiconshelp(size: size, resizing: resizingBehavior)
        case .helpOutline:
            return GridiconsGenerated.imageOfGridiconshelpoutline(size: size, resizing: resizingBehavior)
        case .heart:
            return GridiconsGenerated.imageOfGridiconsheart(size: size, resizing: resizingBehavior)
        case .heartOutline:
            return GridiconsGenerated.imageOfGridiconsheartoutline(size: size, resizing: resizingBehavior)
        case .heading:
            return GridiconsGenerated.imageOfGridiconsheading(size: size, resizing: resizingBehavior)
        case .grid:
            return GridiconsGenerated.imageOfGridiconsgrid(size: size, resizing: resizingBehavior)
        case .globe:
            return GridiconsGenerated.imageOfGridiconsglobe(size: size, resizing: resizingBehavior)
        case .folder:
            return GridiconsGenerated.imageOfGridiconsfolder(size: size, resizing: resizingBehavior)
        case .folderMultiple:
            return GridiconsGenerated.imageOfGridiconsfoldermultiple(size: size, resizing: resizingBehavior)
        case .flipVertical:
            return GridiconsGenerated.imageOfGridiconsflipvertical(size: size, resizing: resizingBehavior)
        case .flipHorizontal:
            return GridiconsGenerated.imageOfGridiconsfliphorizontal(size: size, resizing: resizingBehavior)
        case .flag:
            return GridiconsGenerated.imageOfGridiconsflag(size: size, resizing: resizingBehavior)
        case .external:
            return GridiconsGenerated.imageOfGridiconsexternal(size: size, resizing: resizingBehavior)
        case .ellipsis:
            return GridiconsGenerated.imageOfGridiconsellipsis(size: size, resizing: resizingBehavior)
        case .dropdown:
            return GridiconsGenerated.imageOfGridiconsdropdown(size: size, resizing: resizingBehavior)
        case .domains:
            return GridiconsGenerated.imageOfGridiconsdomains(size: size, resizing: resizingBehavior)
        case .customize:
            return GridiconsGenerated.imageOfGridiconscustomize(size: size, resizing: resizingBehavior)
        case .customPostType:
            return GridiconsGenerated.imageOfGridiconscustomposttype(size: size, resizing: resizingBehavior)
        case .cross:
            return GridiconsGenerated.imageOfGridiconscross(size: size, resizing: resizingBehavior)
        case .crossSmall:
            return GridiconsGenerated.imageOfGridiconscrosssmall(size: size, resizing: resizingBehavior)
        case .crop:
            return GridiconsGenerated.imageOfGridiconscrop(size: size, resizing: resizingBehavior)
        case .creditCard:
            return GridiconsGenerated.imageOfGridiconscreditcard(size: size, resizing: resizingBehavior)
        case .create:
            return GridiconsGenerated.imageOfGridiconscreate(size: size, resizing: resizingBehavior)
        case .computer:
            return GridiconsGenerated.imageOfGridiconscomputer(size: size, resizing: resizingBehavior)
        case .comment:
            return GridiconsGenerated.imageOfGridiconscomment(size: size, resizing: resizingBehavior)
        case .cog:
            return GridiconsGenerated.imageOfGridiconscog(size: size, resizing: resizingBehavior)
        case .code:
            return GridiconsGenerated.imageOfGridiconscode(size: size, resizing: resizingBehavior)
        case .cloud:
            return GridiconsGenerated.imageOfGridiconscloud(size: size, resizing: resizingBehavior)
        case .cloudUpload:
            return GridiconsGenerated.imageOfGridiconscloudupload(size: size, resizing: resizingBehavior)
        case .cloudOutline:
            return GridiconsGenerated.imageOfGridiconscloudoutline(size: size, resizing: resizingBehavior)
        case .cloudDownload:
            return GridiconsGenerated.imageOfGridiconsclouddownload(size: size, resizing: resizingBehavior)
        case .clipboard:
            return GridiconsGenerated.imageOfGridiconsclipboard(size: size, resizing: resizingBehavior)
        case .clearFormatting:
            return GridiconsGenerated.imageOfGridiconsclearformatting(size: size, resizing: resizingBehavior)
        case .chevronUp:
            return GridiconsGenerated.imageOfGridiconschevronup(size: size, resizing: resizingBehavior)
        case .chevronRight:
            return GridiconsGenerated.imageOfGridiconschevronright(size: size, resizing: resizingBehavior)
        case .chevronLeft:
            return GridiconsGenerated.imageOfGridiconschevronleft(size: size, resizing: resizingBehavior)
        case .chevronDown:
            return GridiconsGenerated.imageOfGridiconschevrondown(size: size, resizing: resizingBehavior)
        case .checkmark:
            return GridiconsGenerated.imageOfGridiconscheckmark(size: size, resizing: resizingBehavior)
        case .checkmarkCircle:
            return GridiconsGenerated.imageOfGridiconscheckmarkcircle(size: size, resizing: resizingBehavior)
        case .cart:
            return GridiconsGenerated.imageOfGridiconscart(size: size, resizing: resizingBehavior)
        case .caption:
            return GridiconsGenerated.imageOfGridiconscaption(size: size, resizing: resizingBehavior)
        case .camera:
            return GridiconsGenerated.imageOfGridiconscamera(size: size, resizing: resizingBehavior)
        case .calendar:
            return GridiconsGenerated.imageOfGridiconscalendar(size: size, resizing: resizingBehavior)
        case .briefcase:
            return GridiconsGenerated.imageOfGridiconsbriefcase(size: size, resizing: resizingBehavior)
        case .bookmark:
            return GridiconsGenerated.imageOfGridiconsbookmark(size: size, resizing: resizingBehavior)
        case .bookmarkOutline:
            return GridiconsGenerated.imageOfGridiconsbookmarkoutline(size: size, resizing: resizingBehavior)
        case .book:
            return GridiconsGenerated.imageOfGridiconsbook(size: size, resizing: resizingBehavior)
        case .bold:
            return GridiconsGenerated.imageOfGridiconsbold(size: size, resizing: resizingBehavior)
        case .block:
            return GridiconsGenerated.imageOfGridiconsblock(size: size, resizing: resizingBehavior)
        case .bell:
            return GridiconsGenerated.imageOfGridiconsbell(size: size, resizing: resizingBehavior)
        case .audio:
            return GridiconsGenerated.imageOfGridiconsaudio(size: size, resizing: resizingBehavior)
        case .attachment:
            return GridiconsGenerated.imageOfGridiconsattachment(size: size, resizing: resizingBehavior)
        case .aside:
            return GridiconsGenerated.imageOfGridiconsaside(size: size, resizing: resizingBehavior)
        case .arrowUp:
            return GridiconsGenerated.imageOfGridiconsarrowup(size: size, resizing: resizingBehavior)
        case .arrowRight:
            return GridiconsGenerated.imageOfGridiconsarrowright(size: size, resizing: resizingBehavior)
        case .arrowLeft:
            return GridiconsGenerated.imageOfGridiconsarrowleft(size: size, resizing: resizingBehavior)
        case .arrowDown:
            return GridiconsGenerated.imageOfGridiconsarrowdown(size: size, resizing: resizingBehavior)
        case .alignRight:
            return GridiconsGenerated.imageOfGridiconsalignright(size: size, resizing: resizingBehavior)
        case .alignLeft:
            return GridiconsGenerated.imageOfGridiconsalignleft(size: size, resizing: resizingBehavior)
        case .alignJustify:
            return GridiconsGenerated.imageOfGridiconsalignjustify(size: size, resizing: resizingBehavior)
        case .alignImageRight:
            return GridiconsGenerated.imageOfGridiconsalignimageright(size: size, resizing: resizingBehavior)
        case .alignImageNone:
            return GridiconsGenerated.imageOfGridiconsalignimagenone(size: size, resizing: resizingBehavior)
        case .alignImageLeft:
            return GridiconsGenerated.imageOfGridiconsalignimageleft(size: size, resizing: resizingBehavior)
        case .alignImageCenter:
            return GridiconsGenerated.imageOfGridiconsalignimagecenter(size: size, resizing: resizingBehavior)
        case .alignCenter:
            return GridiconsGenerated.imageOfGridiconsaligncenter(size: size, resizing: resizingBehavior)
        case .add:
            return GridiconsGenerated.imageOfGridiconsadd(size: size, resizing: resizingBehavior)
        case .addOutline:
            return GridiconsGenerated.imageOfGridiconsaddoutline(size: size, resizing: resizingBehavior)
        case .addImage:
            return GridiconsGenerated.imageOfGridiconsaddimage(size: size, resizing: resizingBehavior)
        }
    }
}
