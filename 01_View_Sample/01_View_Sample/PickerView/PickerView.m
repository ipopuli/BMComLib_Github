//
//  PickerView.m
//  01_View_Sample
//
//  Created by 신 영호 on 11. 10. 20..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//
// 라이브러리 설명

// 본 피커뷰 라이브러리는 피커뷰를 자연스럽게 사용하는 방법을 제시합니다
// 투명 뷰 위에 피커뷰와 투명 버튼을 올려 닫기 인터페이스를 유연하게 만들고 피커뷰 위의 뷰 공간을 
// 투명하게 함으로 피커뷰만 띄운것처럼 사용자를 기만할 수 있습니다
// 11. 10. 20 이석재

#import "PickerView.h"

@implementation PickerView

@synthesize picker;
@synthesize m_pickerData;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray * Data = [[NSArray alloc] initWithObjects:
                      @"1",@"2",@"3",@"4",@"5"
                      ,nil];
    self.m_pickerData = Data;
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



#pragma mark - UIPickerView Datasource

// 컴포넌트 갯수
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}

// 각 컴포넌트 배열 갯수
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
	return [m_pickerData count];
}

// 컴포넌트 행에 표현할 제목 
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
	return [m_pickerData objectAtIndex:row];
}

// 피커뷰가 선택될때 호출
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"선택됨");
}


@end































