//
//  ViewController.m
//  170207 - 3 LoginPage
//
//  Created by Park Jae Han on 2017. 2. 7..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIScrollViewDelegate, UITextFieldDelegate>


@property UITextField *idField;
@property UITextField *pwField;
@property UIScrollView *scrollView;
@property UILabel *loginMessage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSInteger viewW = self.view.frame.size.width;
    NSInteger viewH = self.view.frame.size.height;

    //BG Image
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, viewW, viewH)];
    bgImageView.image = [UIImage imageNamed:@"bg.jpeg"];
    bgImageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:bgImageView];
    
            //BG Color
            UIView *bgColorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, viewW, viewH)];
            bgColorView.backgroundColor = [UIColor colorWithRed:75/255.0 green:104/255.0 blue:99/255.0 alpha:0.5];
            [bgImageView addSubview:bgColorView];
    
    
    //타이틀
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 70, viewW - 60, 100)];
    titleLabel.text = @"App Title";
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.font = [UIFont systemFontOfSize:30];
    [self.view addSubview:titleLabel];
    
    //메시지
    self.loginMessage = [[UILabel alloc] initWithFrame:CGRectMake(0, viewH - 120, viewW, 50)];
    self.loginMessage.textColor = [UIColor whiteColor];
    self.loginMessage.text = @"로그인 되었습니다";
    self.loginMessage.textAlignment = NSTextAlignmentCenter;
    self.loginMessage.font = [UIFont systemFontOfSize:16];
    self.loginMessage.hidden = YES;
    [self.view addSubview:self.loginMessage];

    
    //UIScrollView
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(30, 100, viewW, 500)];
    [self.scrollView setContentSize:CGSizeMake(viewW - 60, 250)];
    self.scrollView.scrollEnabled = YES;
    self.scrollView.pagingEnabled = YES;
    self.scrollView.delegate = self;
    [self.view addSubview:self.scrollView];
    NSInteger offsetY = 180;
    
            //ID
            self.idField = [[UITextField alloc] initWithFrame:CGRectMake(0, offsetY, viewW - 60, 45)];
            self.idField.placeholder = @"id";
            self.idField.textColor = [UIColor blackColor];
            self.idField.backgroundColor = [UIColor whiteColor];
            self.idField.borderStyle = UITextBorderStyleRoundedRect;
            self.idField.delegate = self;
            self.idField.tag = 1000;
            [self.scrollView addSubview:self.idField];
            
            //PW
            self.pwField = [[UITextField alloc] initWithFrame:CGRectMake(0, offsetY + 55, viewW - 60, 45)];
            self.pwField.placeholder = @"password";
            self.pwField.textColor = [UIColor blackColor];
            self.pwField.backgroundColor = [UIColor whiteColor];
            self.pwField.borderStyle = UITextBorderStyleRoundedRect;
//            self.pwField.textInputMode = [UITextInputMode ]
            self.pwField.delegate = self;
            self.pwField.tag = 2000;
            [self.scrollView addSubview:self.pwField];
    
            
            //로그인
            UIButton *signInBtn = [UIButton buttonWithType:UIButtonTypeCustom];
            signInBtn.frame = CGRectMake(0, offsetY + 115, viewW - 60, 48);
            signInBtn.backgroundColor = [UIColor colorWithRed:79/255.0 green:206/255.0 blue:217/255.0 alpha:1];
            signInBtn.tag = 1;
            [signInBtn setTitle:@"로그인" forState:UIControlStateNormal];
            [signInBtn addTarget:self action:@selector(didSelectedBtn) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview:signInBtn];
            
            //회원가입
            UIButton *signUpBtn = [UIButton buttonWithType:UIButtonTypeCustom];
            signUpBtn.frame = CGRectMake(0, offsetY + 180, viewW - 60, 35);
            signUpBtn.titleLabel.font = [UIFont systemFontOfSize:14];
            signUpBtn.tag = 2;
            [signUpBtn setTitle:@"회원가입" forState:UIControlStateNormal];
            [signUpBtn addTarget:self action:@selector(didSelectedBtn) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview:signUpBtn];
}

    



- (void)textFieldDidBeginEditing:(UITextField *)textField {
 
    [self.scrollView setContentOffset:CGPointMake(0, 100) animated:YES];

}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    if (textField.tag == 1000) {
        
        [self.pwField becomeFirstResponder];

        
    } else if (textField.tag == 2000)
    {
        [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
        [self.pwField resignFirstResponder];
        
    }
    return YES;
}


- (void)textFieldDidEndEditing:(UITextField *)textField
{
    
    self.loginMessage.hidden = NO;
}


- (void)didSelectedBtn
{
    self.loginMessage.hidden = NO;
    [self.pwField resignFirstResponder];
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

