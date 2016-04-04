import Foundation

@objc
public enum GridiconType: Int {
    case Visible
    case Video
    case VideoCamera
    case User
    case UserCircle
    case Undo
    case Underline
    case Types
    case Trophy
    case Trash
    case Time
    case ThumbsUp
    case Themes
    case TextColor
    case Tag
    case Tablet
    case Sync
    case Strikethrough
    case Status
    case Stats
    case StatsAlt
    case Star
    case StarOutline
    case SpecialCharacter
    case Speaker
    case Spam
    case SignOut
    case Share
    case ShareIOS
    case Search
    case Scheduled
    case Rotate
    case Reply
    case Refresh
    case Redo
    case Reblog
    case Reader
    case Quote
    case Print
    case Posts
    case Popout
    case Plus
    case PlusSmall
    case Plugins
    case Phone
    case Pencil
    case Pages
    case Notice
    case NoticeOutline
    case NotVisible
    case MySites
    case MySitesHorizon
    case Minus
    case MinusSmall
    case Microphone
    case Menus
    case Menu
    case Mention
    case Mail
    case Lock
    case Location
    case ListUnordered
    case ListOrdered
    case ListCheckmark
    case Link
    case LinkBreak
    case Layout
    case LayoutBlocks
    case Italic
    case Institution
    case Ink
    case Info
    case InfoOutline
    case IndentRight
    case IndentLeft
    case Image
    case ImageMultiple
    case House
    case History
    case Help
    case HelpOutline
    case Heart
    case HeartOutline
    case Heading
    case Grid
    case Globe
    case Folder
    case FolderMultiple
    case FlipVertical
    case FlipHorizontal
    case Flag
    case External
    case Ellipsis
    case Dropdown
    case Domains
    case Customize
    case CustomPostType
    case Cross
    case CrossSmall
    case Crop
    case CreditCard
    case Create
    case Computer
    case Comment
    case Cog
    case Code
    case Cloud
    case CloudUpload
    case CloudOutline
    case CloudDownload
    case Clipboard
    case ClearFormatting
    case ChevronUp
    case ChevronRight
    case ChevronLeft
    case ChevronDown
    case Checkmark
    case CheckmarkCircle
    case Cart
    case Camera
    case Calendar
    case Briefcase
    case Bookmark
    case BookmarkOutline
    case Book
    case Bold
    case Block
    case Bell
    case Audio
    case Attachment
    case Aside
    case ArrowUp
    case ArrowRight
    case ArrowLeft
    case ArrowDown
    case AlignRight
    case AlignLeft
    case AlignJustify
    case AlignImageRight
    case AlignImageNone
    case AlignImageLeft
    case AlignImageCenter
    case AlignCenter
    case Add
    case AddOutline
    case AddImage
}

@objc
public class Gridicon: NSObject {
    public static let defaultSize = CGSize(width: 24.0, height: 24.0)
    
    private static let resizingBehavior = GridiconsGenerated.ResizingBehavior.AspectFit

    static let cache = NSCache()
    
    // For Objective-C
    /// - returns: A template image of the specified Gridicon type, at the default size.
    public class func iconOfType(type: GridiconType) -> UIImage {
        return iconOfType(type, withSize: defaultSize)
    }
    
    /// - returns: A template image of the specified Gridicon type, at the specified size.
    public class func iconOfType(type: GridiconType, withSize size: CGSize = defaultSize) -> UIImage {
        if let icon = cachedIconOfType(type, withSize: size) {
            return icon
        }
        
        let icon = generateIconOfType(type, withSize: size).imageWithRenderingMode(.AlwaysTemplate)
        cache.setObject(icon, forKey: "\(type.rawValue)-\(size.width)-\(size.height)")
        
        return icon
    }
    
    private class func cachedIconOfType(type: GridiconType, withSize size: CGSize) -> UIImage? {
        return cache.objectForKey("\(type.rawValue)-\(size.width)-\(size.height)") as? UIImage
    }
    
    private class func generateIconOfType(type: GridiconType, withSize size: CGSize) -> UIImage {
        switch type {
        case .Visible:
            return GridiconsGenerated.imageOfGridiconsvisible(size: size, resizing: resizingBehavior)
        case .Video:
            return GridiconsGenerated.imageOfGridiconsvideo(size: size, resizing: resizingBehavior)
        case .VideoCamera:
            return GridiconsGenerated.imageOfGridiconsvideocamera(size: size, resizing: resizingBehavior)
        case .User:
            return GridiconsGenerated.imageOfGridiconsuser(size: size, resizing: resizingBehavior)
        case .UserCircle:
            return GridiconsGenerated.imageOfGridiconsusercircle(size: size, resizing: resizingBehavior)
        case .Undo:
            return GridiconsGenerated.imageOfGridiconsundo(size: size, resizing: resizingBehavior)
        case .Underline:
            return GridiconsGenerated.imageOfGridiconsunderline(size: size, resizing: resizingBehavior)
        case .Types:
            return GridiconsGenerated.imageOfGridiconstypes(size: size, resizing: resizingBehavior)
        case .Trophy:
            return GridiconsGenerated.imageOfGridiconstrophy(size: size, resizing: resizingBehavior)
        case .Trash:
            return GridiconsGenerated.imageOfGridiconstrash(size: size, resizing: resizingBehavior)
        case .Time:
            return GridiconsGenerated.imageOfGridiconstime(size: size, resizing: resizingBehavior)
        case .ThumbsUp:
            return GridiconsGenerated.imageOfGridiconsthumbsup(size: size, resizing: resizingBehavior)
        case .Themes:
            return GridiconsGenerated.imageOfGridiconsthemes(size: size, resizing: resizingBehavior)
        case .TextColor:
            return GridiconsGenerated.imageOfGridiconstextcolor(size: size, resizing: resizingBehavior)
        case .Tag:
            return GridiconsGenerated.imageOfGridiconstag(size: size, resizing: resizingBehavior)
        case .Tablet:
            return GridiconsGenerated.imageOfGridiconstablet(size: size, resizing: resizingBehavior)
        case .Sync:
            return GridiconsGenerated.imageOfGridiconssync(size: size, resizing: resizingBehavior)
        case .Strikethrough:
            return GridiconsGenerated.imageOfGridiconsstrikethrough(size: size, resizing: resizingBehavior)
        case .Status:
            return GridiconsGenerated.imageOfGridiconsstatus(size: size, resizing: resizingBehavior)
        case .Stats:
            return GridiconsGenerated.imageOfGridiconsstats(size: size, resizing: resizingBehavior)
        case .StatsAlt:
            return GridiconsGenerated.imageOfGridiconsstatsalt(size: size, resizing: resizingBehavior)
        case .Star:
            return GridiconsGenerated.imageOfGridiconsstar(size: size, resizing: resizingBehavior)
        case .StarOutline:
            return GridiconsGenerated.imageOfGridiconsstaroutline(size: size, resizing: resizingBehavior)
        case .SpecialCharacter:
            return GridiconsGenerated.imageOfGridiconsspecialcharacter(size: size, resizing: resizingBehavior)
        case .Speaker:
            return GridiconsGenerated.imageOfGridiconsspeaker(size: size, resizing: resizingBehavior)
        case .Spam:
            return GridiconsGenerated.imageOfGridiconsspam(size: size, resizing: resizingBehavior)
        case .SignOut:
            return GridiconsGenerated.imageOfGridiconssignout(size: size, resizing: resizingBehavior)
        case .Share:
            return GridiconsGenerated.imageOfGridiconsshare(size: size, resizing: resizingBehavior)
        case .ShareIOS:
            return GridiconsGenerated.imageOfGridiconsshareios(size: size, resizing: resizingBehavior)
        case .Search:
            return GridiconsGenerated.imageOfGridiconssearch(size: size, resizing: resizingBehavior)
        case .Scheduled:
            return GridiconsGenerated.imageOfGridiconsscheduled(size: size, resizing: resizingBehavior)
        case .Rotate:
            return GridiconsGenerated.imageOfGridiconsrotate(size: size, resizing: resizingBehavior)
        case .Reply:
            return GridiconsGenerated.imageOfGridiconsreply(size: size, resizing: resizingBehavior)
        case .Refresh:
            return GridiconsGenerated.imageOfGridiconsrefresh(size: size, resizing: resizingBehavior)
        case .Redo:
            return GridiconsGenerated.imageOfGridiconsredo(size: size, resizing: resizingBehavior)
        case .Reblog:
            return GridiconsGenerated.imageOfGridiconsreblog(size: size, resizing: resizingBehavior)
        case .Reader:
            return GridiconsGenerated.imageOfGridiconsreader(size: size, resizing: resizingBehavior)
        case .Quote:
            return GridiconsGenerated.imageOfGridiconsquote(size: size, resizing: resizingBehavior)
        case .Print:
            return GridiconsGenerated.imageOfGridiconsprint(size: size, resizing: resizingBehavior)
        case .Posts:
            return GridiconsGenerated.imageOfGridiconsposts(size: size, resizing: resizingBehavior)
        case .Popout:
            return GridiconsGenerated.imageOfGridiconspopout(size: size, resizing: resizingBehavior)
        case .Plus:
            return GridiconsGenerated.imageOfGridiconsplus(size: size, resizing: resizingBehavior)
        case .PlusSmall:
            return GridiconsGenerated.imageOfGridiconsplussmall(size: size, resizing: resizingBehavior)
        case .Plugins:
            return GridiconsGenerated.imageOfGridiconsplugins(size: size, resizing: resizingBehavior)
        case .Phone:
            return GridiconsGenerated.imageOfGridiconsphone(size: size, resizing: resizingBehavior)
        case .Pencil:
            return GridiconsGenerated.imageOfGridiconspencil(size: size, resizing: resizingBehavior)
        case .Pages:
            return GridiconsGenerated.imageOfGridiconspages(size: size, resizing: resizingBehavior)
        case .Notice:
            return GridiconsGenerated.imageOfGridiconsnotice(size: size, resizing: resizingBehavior)
        case .NoticeOutline:
            return GridiconsGenerated.imageOfGridiconsnoticeoutline(size: size, resizing: resizingBehavior)
        case .NotVisible:
            return GridiconsGenerated.imageOfGridiconsnotvisible(size: size, resizing: resizingBehavior)
        case .MySites:
            return GridiconsGenerated.imageOfGridiconsmysites(size: size, resizing: resizingBehavior)
        case .MySitesHorizon:
            return GridiconsGenerated.imageOfGridiconsmysiteshorizon(size: size, resizing: resizingBehavior)
        case .Minus:
            return GridiconsGenerated.imageOfGridiconsminus(size: size, resizing: resizingBehavior)
        case .MinusSmall:
            return GridiconsGenerated.imageOfGridiconsminussmall(size: size, resizing: resizingBehavior)
        case .Microphone:
            return GridiconsGenerated.imageOfGridiconsmicrophone(size: size, resizing: resizingBehavior)
        case .Menus:
            return GridiconsGenerated.imageOfGridiconsmenus(size: size, resizing: resizingBehavior)
        case .Menu:
            return GridiconsGenerated.imageOfGridiconsmenu(size: size, resizing: resizingBehavior)
        case .Mention:
            return GridiconsGenerated.imageOfGridiconsmention(size: size, resizing: resizingBehavior)
        case .Mail:
            return GridiconsGenerated.imageOfGridiconsmail(size: size, resizing: resizingBehavior)
        case .Lock:
            return GridiconsGenerated.imageOfGridiconslock(size: size, resizing: resizingBehavior)
        case .Location:
            return GridiconsGenerated.imageOfGridiconslocation(size: size, resizing: resizingBehavior)
        case .ListUnordered:
            return GridiconsGenerated.imageOfGridiconslistunordered(size: size, resizing: resizingBehavior)
        case .ListOrdered:
            return GridiconsGenerated.imageOfGridiconslistordered(size: size, resizing: resizingBehavior)
        case .ListCheckmark:
            return GridiconsGenerated.imageOfGridiconslistcheckmark(size: size, resizing: resizingBehavior)
        case .Link:
            return GridiconsGenerated.imageOfGridiconslink(size: size, resizing: resizingBehavior)
        case .LinkBreak:
            return GridiconsGenerated.imageOfGridiconslinkbreak(size: size, resizing: resizingBehavior)
        case .Layout:
            return GridiconsGenerated.imageOfGridiconslayout(size: size, resizing: resizingBehavior)
        case .LayoutBlocks:
            return GridiconsGenerated.imageOfGridiconslayoutblocks(size: size, resizing: resizingBehavior)
        case .Italic:
            return GridiconsGenerated.imageOfGridiconsitalic(size: size, resizing: resizingBehavior)
        case .Institution:
            return GridiconsGenerated.imageOfGridiconsinstitution(size: size, resizing: resizingBehavior)
        case .Ink:
            return GridiconsGenerated.imageOfGridiconsink(size: size, resizing: resizingBehavior)
        case .Info:
            return GridiconsGenerated.imageOfGridiconsinfo(size: size, resizing: resizingBehavior)
        case .InfoOutline:
            return GridiconsGenerated.imageOfGridiconsinfooutline(size: size, resizing: resizingBehavior)
        case .IndentRight:
            return GridiconsGenerated.imageOfGridiconsindentright(size: size, resizing: resizingBehavior)
        case .IndentLeft:
            return GridiconsGenerated.imageOfGridiconsindentleft(size: size, resizing: resizingBehavior)
        case .Image:
            return GridiconsGenerated.imageOfGridiconsimage(size: size, resizing: resizingBehavior)
        case .ImageMultiple:
            return GridiconsGenerated.imageOfGridiconsimagemultiple(size: size, resizing: resizingBehavior)
        case .House:
            return GridiconsGenerated.imageOfGridiconshouse(size: size, resizing: resizingBehavior)
        case .History:
            return GridiconsGenerated.imageOfGridiconshistory(size: size, resizing: resizingBehavior)
        case .Help:
            return GridiconsGenerated.imageOfGridiconshelp(size: size, resizing: resizingBehavior)
        case .HelpOutline:
            return GridiconsGenerated.imageOfGridiconshelpoutline(size: size, resizing: resizingBehavior)
        case .Heart:
            return GridiconsGenerated.imageOfGridiconsheart(size: size, resizing: resizingBehavior)
        case .HeartOutline:
            return GridiconsGenerated.imageOfGridiconsheartoutline(size: size, resizing: resizingBehavior)
        case .Heading:
            return GridiconsGenerated.imageOfGridiconsheading(size: size, resizing: resizingBehavior)
        case .Grid:
            return GridiconsGenerated.imageOfGridiconsgrid(size: size, resizing: resizingBehavior)
        case .Globe:
            return GridiconsGenerated.imageOfGridiconsglobe(size: size, resizing: resizingBehavior)
        case .Folder:
            return GridiconsGenerated.imageOfGridiconsfolder(size: size, resizing: resizingBehavior)
        case .FolderMultiple:
            return GridiconsGenerated.imageOfGridiconsfoldermultiple(size: size, resizing: resizingBehavior)
        case .FlipVertical:
            return GridiconsGenerated.imageOfGridiconsflipvertical(size: size, resizing: resizingBehavior)
        case .FlipHorizontal:
            return GridiconsGenerated.imageOfGridiconsfliphorizontal(size: size, resizing: resizingBehavior)
        case .Flag:
            return GridiconsGenerated.imageOfGridiconsflag(size: size, resizing: resizingBehavior)
        case .External:
            return GridiconsGenerated.imageOfGridiconsexternal(size: size, resizing: resizingBehavior)
        case .Ellipsis:
            return GridiconsGenerated.imageOfGridiconsellipsis(size: size, resizing: resizingBehavior)
        case .Dropdown:
            return GridiconsGenerated.imageOfGridiconsdropdown(size: size, resizing: resizingBehavior)
        case .Domains:
            return GridiconsGenerated.imageOfGridiconsdomains(size: size, resizing: resizingBehavior)
        case .Customize:
            return GridiconsGenerated.imageOfGridiconscustomize(size: size, resizing: resizingBehavior)
        case .CustomPostType:
            return GridiconsGenerated.imageOfGridiconscustomposttype(size: size, resizing: resizingBehavior)
        case .Cross:
            return GridiconsGenerated.imageOfGridiconscross(size: size, resizing: resizingBehavior)
        case .CrossSmall:
            return GridiconsGenerated.imageOfGridiconscrosssmall(size: size, resizing: resizingBehavior)
        case .Crop:
            return GridiconsGenerated.imageOfGridiconscrop(size: size, resizing: resizingBehavior)
        case .CreditCard:
            return GridiconsGenerated.imageOfGridiconscreditcard(size: size, resizing: resizingBehavior)
        case .Create:
            return GridiconsGenerated.imageOfGridiconscreate(size: size, resizing: resizingBehavior)
        case .Computer:
            return GridiconsGenerated.imageOfGridiconscomputer(size: size, resizing: resizingBehavior)
        case .Comment:
            return GridiconsGenerated.imageOfGridiconscomment(size: size, resizing: resizingBehavior)
        case .Cog:
            return GridiconsGenerated.imageOfGridiconscog(size: size, resizing: resizingBehavior)
        case .Code:
            return GridiconsGenerated.imageOfGridiconscode(size: size, resizing: resizingBehavior)
        case .Cloud:
            return GridiconsGenerated.imageOfGridiconscloud(size: size, resizing: resizingBehavior)
        case .CloudUpload:
            return GridiconsGenerated.imageOfGridiconscloudupload(size: size, resizing: resizingBehavior)
        case .CloudOutline:
            return GridiconsGenerated.imageOfGridiconscloudoutline(size: size, resizing: resizingBehavior)
        case .CloudDownload:
            return GridiconsGenerated.imageOfGridiconsclouddownload(size: size, resizing: resizingBehavior)
        case .Clipboard:
            return GridiconsGenerated.imageOfGridiconsclipboard(size: size, resizing: resizingBehavior)
        case .ClearFormatting:
            return GridiconsGenerated.imageOfGridiconsclearformatting(size: size, resizing: resizingBehavior)
        case .ChevronUp:
            return GridiconsGenerated.imageOfGridiconschevronup(size: size, resizing: resizingBehavior)
        case .ChevronRight:
            return GridiconsGenerated.imageOfGridiconschevronright(size: size, resizing: resizingBehavior)
        case .ChevronLeft:
            return GridiconsGenerated.imageOfGridiconschevronleft(size: size, resizing: resizingBehavior)
        case .ChevronDown:
            return GridiconsGenerated.imageOfGridiconschevrondown(size: size, resizing: resizingBehavior)
        case .Checkmark:
            return GridiconsGenerated.imageOfGridiconscheckmark(size: size, resizing: resizingBehavior)
        case .CheckmarkCircle:
            return GridiconsGenerated.imageOfGridiconscheckmarkcircle(size: size, resizing: resizingBehavior)
        case .Cart:
            return GridiconsGenerated.imageOfGridiconscart(size: size, resizing: resizingBehavior)
        case .Camera:
            return GridiconsGenerated.imageOfGridiconscamera(size: size, resizing: resizingBehavior)
        case .Calendar:
            return GridiconsGenerated.imageOfGridiconscalendar(size: size, resizing: resizingBehavior)
        case .Briefcase:
            return GridiconsGenerated.imageOfGridiconsbriefcase(size: size, resizing: resizingBehavior)
        case .Bookmark:
            return GridiconsGenerated.imageOfGridiconsbookmark(size: size, resizing: resizingBehavior)
        case .BookmarkOutline:
            return GridiconsGenerated.imageOfGridiconsbookmarkoutline(size: size, resizing: resizingBehavior)
        case .Book:
            return GridiconsGenerated.imageOfGridiconsbook(size: size, resizing: resizingBehavior)
        case .Bold:
            return GridiconsGenerated.imageOfGridiconsbold(size: size, resizing: resizingBehavior)
        case .Block:
            return GridiconsGenerated.imageOfGridiconsblock(size: size, resizing: resizingBehavior)
        case .Bell:
            return GridiconsGenerated.imageOfGridiconsbell(size: size, resizing: resizingBehavior)
        case .Audio:
            return GridiconsGenerated.imageOfGridiconsaudio(size: size, resizing: resizingBehavior)
        case .Attachment:
            return GridiconsGenerated.imageOfGridiconsattachment(size: size, resizing: resizingBehavior)
        case .Aside:
            return GridiconsGenerated.imageOfGridiconsaside(size: size, resizing: resizingBehavior)
        case .ArrowUp:
            return GridiconsGenerated.imageOfGridiconsarrowup(size: size, resizing: resizingBehavior)
        case .ArrowRight:
            return GridiconsGenerated.imageOfGridiconsarrowright(size: size, resizing: resizingBehavior)
        case .ArrowLeft:
            return GridiconsGenerated.imageOfGridiconsarrowleft(size: size, resizing: resizingBehavior)
        case .ArrowDown:
            return GridiconsGenerated.imageOfGridiconsarrowdown(size: size, resizing: resizingBehavior)
        case .AlignRight:
            return GridiconsGenerated.imageOfGridiconsalignright(size: size, resizing: resizingBehavior)
        case .AlignLeft:
            return GridiconsGenerated.imageOfGridiconsalignleft(size: size, resizing: resizingBehavior)
        case .AlignJustify:
            return GridiconsGenerated.imageOfGridiconsalignjustify(size: size, resizing: resizingBehavior)
        case .AlignImageRight:
            return GridiconsGenerated.imageOfGridiconsalignimageright(size: size, resizing: resizingBehavior)
        case .AlignImageNone:
            return GridiconsGenerated.imageOfGridiconsalignimagenone(size: size, resizing: resizingBehavior)
        case .AlignImageLeft:
            return GridiconsGenerated.imageOfGridiconsalignimageleft(size: size, resizing: resizingBehavior)
        case .AlignImageCenter:
            return GridiconsGenerated.imageOfGridiconsalignimagecenter(size: size, resizing: resizingBehavior)
        case .AlignCenter:
            return GridiconsGenerated.imageOfGridiconsaligncenter(size: size, resizing: resizingBehavior)
        case .Add:
            return GridiconsGenerated.imageOfGridiconsadd(size: size, resizing: resizingBehavior)
        case .AddOutline:
            return GridiconsGenerated.imageOfGridiconsaddoutline(size: size, resizing: resizingBehavior)
        case .AddImage:
            return GridiconsGenerated.imageOfGridiconsaddimage(size: size, resizing: resizingBehavior)
        }
    }
}